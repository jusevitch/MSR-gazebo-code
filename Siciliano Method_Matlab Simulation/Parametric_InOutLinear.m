%% Siciliano Method planning/tracking
% method 3: Parametric Polynomial, input/output linearization

% initial/final configurations and total time
r = 5; % radius
qi = [r 0 pi/2];
qf = [-r 0 pi*3/2];
T = 20; % sec

% map from tspan to normalized s
steps = 1000;
tspan = linspace(0,T,steps);
%s = tspan / T;

% define parameters of the polynomials
k = r*4;

% half circle -- part 2
center = [0,0];
Radius = [r,r];
[path1, vel1, accel1] = ParametricPath_Func(center, Radius, 2*pi/T, T, 'circular');
[path2, vel2, accel2] = ParametricPath_Func(center, Radius, 2*pi/T, T, 'eightshape');



% plot
figure(1);
plot(path1.x(tspan), path1.y(tspan), '+'); title('trajectory'); hold on; plot(path2.x(tspan), path2.y(tspan), '+'); hold off;
figure(2);
subplot(1,2,1);
plot(tspan,vel1.x(tspan)); hold on; plot(tspan,vel1.y(tspan)); hold off;
legend('x vel','y vel'); title('circular');
subplot(1,2,2);
plot(tspan,vel2.x(tspan)); hold on; plot(tspan,vel2.y(tspan)); hold off;
legend('x vel','y vel'); title('eight shape');
figure(3);
subplot(1,2,1);
plot(tspan,accel1.x(tspan)); hold on; plot(tspan,accel1.y(tspan)); hold off;
legend('x accel','y accel'); title('circular');
subplot(1,2,2);
plot(tspan,accel2.x(tspan)); hold on; plot(tspan,accel2.y(tspan)); hold off;
legend('x accel','y accel'); title('eight shape');

%% input/output linearization
% consider the following outputs:
% y1 = x + b*cos(theta)
% y2 = y + b*sin(theta)
% with output dynamics
% y1dot = u1
% y2dot = u2
% theta_dot = (u2*cos(theta) - u1*sin(theta)) / b;

% selete a path
path_type = 'circular';
%path_type = 'eightshape';
if (strcmp(path_type,'circular'))
    path = path1;
    vel = vel1;
    accel = accel1;
else
    path = path2;
    vel = vel2;
    accel = accel2;   
end

% desired velocities
vd = @(t) sqrt(vel.x(t).^2 + vel.y(t).^2);
wd = @(t) (accel.y(t).*vel.x(t) - accel.x(t).*vel.y(t)) ./ (vel.x(t).^2 + vel.y(t).^2);
% 
wd = @(t) 0*t + 2*pi/T;

% a point B along the sagitta laxis of the unicycle at distance |b|
b = 0.05;

% reference location of the point B
y1d = @(t) path.x(t) + b*cos(path.theta(t));
y2d = @(t) path.y(t) + b*sin(path.theta(t));

% reference velocity of the point B
vy1d = @(t) cos(path.theta(t)) * vd(t) - b*sin(path.theta(t)) * wd(t);
vy2d = @(t) sin(path.theta(t)) * vd(t) + b*cos(path.theta(t)) * wd(t);

% linear control gain
k1 = 4;
k2 = 4;

% max velocity
vmax = 6;
wmax = 4;

% initial position
if (strcmp(path_type,'circular'))
    x0 = qi' + r*[0.2 -0.2 0.01]';
else
    x0 = [0,0,pi/2]' + r*[0.2 -0.2 0.01]';
end

% simulation
dt = 0.01;
tspan = 0:dt:T;
steps = length(tspan);

X = zeros(3,steps);
error = zeros(2,steps);
v = zeros(1,steps);
w = zeros(1,steps);

X(:,1) = x0;
error(:,1) = [y1d(0) y2d(0)]' - x0(1:2);

for i = 1:steps-1
   % current time and next time steps
   t_next = tspan(i+1);
   t = tspan(i);
   
   % current heading angle
   theta = X(3,i);
   
   % control inputs of the output dynamics (linear)
   u1 = vy1d(t) + k1 * error(1,i);
   u2 = vy2d(t) + k2 * error(2,i);
   
   % actual control inputs  of the unicycle model
   v(i) = cos(theta) * u1 + sin(theta) * u2;
   w(i) = -sin(theta)/b * u1 + cos(theta)/b * u2;
   
   % saturation
   v(i) = max(-vmax, min(v(i), vmax));
   w(i) = max(-wmax, min(w(i), wmax));
   
   % update states (euler integration)
%    dt = t_next - t;
%    theta = X(3,i);
%    X(:,i+1) = X(:,i) + dt * ([cos(theta) sin(theta) 0]'*v(i) + [0 0 1]'*w(i));
   % update states (ode45)
   [~,X_temp] = ode45(@(t,x) unicycleModel(t,x,v(i),w(i)), [t t_next], X(:,i)); 
   X(:,i+1) = X_temp(end,:)';
   % map the theta angle to [-pi,pi]
   if X(3,i+1) > pi
       X(3,i+1) = X(3,i+1) - 2*pi;
   end
   if X(3,i+1) < -pi
       X(3,i+1) = X(3,i+1) + 2*pi;
   end
   
   % update errors
   error(:,i+1) = [y1d(t_next) y2d(t_next)]' - X(1:2,i+1);
   
end

% plot
figure(4);
plot_idx = 1:steps*1;
plot(X(1,plot_idx), X(2,plot_idx)); hold on; plot(path.x(tspan), path.y(tspan), '--'); 
hold off; title('linear control');

figure(5)
subplot(5,1,1); plot(tspan,X(1,plot_idx)); hold on; plot(tspan,path.x(tspan),'--'); hold off; title('x');
subplot(5,1,2); plot(tspan,X(2,plot_idx)); hold on; plot(tspan,path.y(tspan),'--'); hold off; title('y');
subplot(5,1,3); plot(tspan,180/pi*X(3,plot_idx)); hold on; plot(tspan,180/pi*path.theta(tspan),'--'); hold off; title('\theta');
subplot(5,1,4); plot(tspan, v); hold on; plot(tspan,tspan*0+vmax, 'r--', tspan,tspan*0-vmax,'r--');  plot(tspan, vd(tspan),'--'); hold off; title('velocity');
subplot(5,1,5); plot(tspan, w); hold on; plot(tspan,tspan*0+wmax, 'r--', tspan,tspan*0-wmax,'r--');  plot(tspan, wd(tspan),'--'); hold off; title('angular velocity');

figure(6)
subplot(4,1,1); plot(tspan,error(1,:)); title('x error');
subplot(4,1,2); plot(tspan,error(2,:)); title('y error');
%subplot(4,1,3); plot(tspan,error(3,:)); title('heading angle error');
subplot(4,1,4); plot(tspan,vecnorm(error,2,1)); title('error norm');