%% Siciliano Method planning/tracking
% method 1: Cubic Polynomial, linear approximation control

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
[path1, vel1, accel1] = CubePolyPath_Func(qi, qf, k, T);
[path2, vel2, accel2] = CubePolyPath_Func(qf, qi, k, T);



% plot
figure(1);
plot(path1.x(tspan), path1.y(tspan), '+'); title('trajectory'); hold on; plot(path2.x(tspan), path2.y(tspan), '+'); hold off;
figure(2);
subplot(1,2,1);
plot(tspan,vel1.x(tspan)); hold on; plot(tspan,vel1.y(tspan)); hold off;
legend('x vel','y vel'); title('upper half');
subplot(1,2,2);
plot(tspan,vel2.x(tspan)); hold on; plot(tspan,vel2.y(tspan)); hold off;
legend('x vel','y vel'); title('lower half');
figure(3);
subplot(1,2,1);
plot(tspan,accel1.x(tspan)); hold on; plot(tspan,accel1.y(tspan)); hold off;
legend('x accel','y accel'); title('upper half');
subplot(1,2,2);
plot(tspan,accel2.x(tspan)); hold on; plot(tspan,accel2.y(tspan)); hold off;
legend('x accel','y accel'); title('lower half');

%% linear control

% desired velocities
vd = @(t) sqrt(vel1.x(t).^2 + vel1.y(t).^2);
wd = @(t) (accel1.y(t).*vel1.x(t) - accel1.x(t).*vel1.y(t)) ./ (vel1.x(t).^2 + vel1.y(t).^2);
%
%wd = @(t) pi/T;
%vd = @(t) wd(t) * r;

% max velocity
vmax = 6;
wmax = 4;

% initial position
x0 = qi' + [0.5 -0.5 0.1]';

% feedback gain
ksi = 0.9;
a = 5;
k1 = 2*ksi*a;
k3 = 2*ksi*a;
k2 = @(t) (a^2 - wd(t).^2) ./ vd(t);

% simulation
dt = 0.01;
tspan = 0:dt:T;
steps = length(tspan);
X = zeros(3,steps);
error = zeros(3,steps);
v = zeros(1,steps);
w = zeros(1,steps);

X(:,1) = x0;
theta = x0(3);
R= [cos(theta) sin(theta) 0; -sin(theta) cos(theta) 0; 0 0 1];
qd0 = [path1.x(0) path1.y(0) path1.theta(0)]';
error(:,1) = R * (qd0 - x0);

for i = 1:steps-1
    
   % current time and next time steps
   t_next = tspan(i+1);
   t = tspan(i);
   
   % errors
   e1 = error(1,i);
   e2 = error(2,i);
   e3 = error(3,i);
   
   % error dynamics control input (linear control)
   u1 = -k1 * e1;
   u2 = -k2(t)*e2 - k3*e3;
   
   % struation
   u1 = max(vd(t)*cos(e3)-vmax, min(u1, vd(t)*cos(e3)+vmax));
   u2 = max(wd(t)-wmax, min(u2, wd(t)+wmax));
   
   % actual inputs of the unicycle model 
   v(i) = vd(t)*cos(e3) - u1;
   w(i) = wd(t) - u2;
   
%    % update state (using euler intergration) 
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
   % Rotation matrix
   theta = X(3,i+1);
   R= [cos(theta) sin(theta) 0; -sin(theta) cos(theta) 0; 0 0 1];
   % desired state
   qd = [path1.x(t_next) path1.y(t_next) path1.theta(t_next)]';
   % error dynamics
   error(:,i+1) = R * (qd - X(:,i+1));   
   % map the theta error to [-pi,pi]
   if error(3,i+1) > pi
       error(3,i+1) = error(3,i+1) - 2*pi;
   end
   if error(3,i+1) < -pi
       error(3,i+1) = error(3,i+1) + 2*pi;
   end  
     
end

% plot
figure(4);
plot_idx = 1:steps*1;
plot(X(1,plot_idx), X(2,plot_idx)); hold on; plot(path1.x(tspan), path1.y(tspan), '--'); 
hold off; title('linear control');

figure(5)
subplot(5,1,1); plot(tspan,X(1,plot_idx)); hold on; plot(tspan,path1.x(tspan),'--'); hold off; title('x');
subplot(5,1,2); plot(tspan,X(2,plot_idx)); hold on; plot(tspan,path1.y(tspan),'--'); hold off; title('y');
subplot(5,1,3); plot(tspan,180/pi*X(3,plot_idx)); hold on; plot(tspan,180/pi*path1.theta(tspan),'--'); hold off; title('\theta');
subplot(5,1,4); plot(tspan, v); hold on; plot(tspan,tspan*0+vmax, 'r--', tspan,tspan*0-vmax,'r--');  plot(tspan, vd(tspan),'--'); hold off; title('velocity');
subplot(5,1,5); plot(tspan, w); hold on; plot(tspan,tspan*0+wmax, 'r--', tspan,tspan*0-wmax,'r--');  plot(tspan, wd(tspan),'--'); hold off; title('angular velocity');


figure(6)
subplot(4,1,1); plot(tspan,error(1,:)); title('x error');
subplot(4,1,2); plot(tspan,error(2,:)); title('y error');
subplot(4,1,3); plot(tspan,error(3,:)); title('heading angle error');
subplot(4,1,4); plot(tspan,vecnorm(error,2,1)); title('error norm');


