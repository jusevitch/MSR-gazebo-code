function [position, velocity, acceleration] = CubePolyPath_Func(qi, qf, k, T)
    % qi: initial configuration
    % qf: final configuration
    % k: free parameter
    % T: total travel time
        
    % map from time to normalized s
    s = @(t) t/T;
    
    % define parameters of the polynomial
    xi = qi(1); yi = qi(2); thetai = qi(3);
    xf = qf(1); yf = qf(2); thetaf = qf(3);
    alpha.x = k*cos(thetaf) - 3*xf;
    alpha.y = k*sin(thetaf) - 3*yf;
    beta.x = k*cos(thetai) + 3*xi;
    beta.y = k*sin(thetai) + 3*yi;
    
    % positions
    %position = zeros(steps,3);
    position.x = @(t) s(t).^3*xf - (s(t)-1).^3*xi + alpha.x*s(t).^2.*(s(t)-1) + beta.x*s(t).*(s(t)-1).^2;
    position.y = @(t) s(t).^3*yf - (s(t)-1).^3*yi + alpha.y*s(t).^2.*(s(t)-1) + beta.y*s(t).*(s(t)-1).^2;

    % velocities
    %velocity = zeros(steps,2);
    velocity.x = @(t) 3*s(t).^2*xf - 3*(s(t)-1).^2*xi + alpha.x*(2*s(t).*(s(t)-1) + s(t).^2) + beta.x*((s(t)-1).^2 + 2*s(t).*(s(t)-1));
    velocity.y = @(t) 3*s(t).^2*yf - 3*(s(t)-1).^2*yi + alpha.y*(2*s(t).*(s(t)-1) + s(t).^2) + beta.y*((s(t)-1).^2 + 2*s(t).*(s(t)-1));
    if (k > 0)
        position.theta = @(t) atan2(velocity.y(t), velocity.x(t));  % heading angle
    else
        position.theta = @(t) atan2(velocity.y(t), velocity.x(t)) + pi;  % heading angle
    end

    % accelerations
    % acceleration = zeros(steps,2);
    acceleration.x = @(t) 6*s(t)*xf - 6*(s(t)-1)*xi + alpha.x*(6*s(t)-2) + beta.x*(6*s(t)-4);
    acceleration.y = @(t) 6*s(t)*yf - 6*(s(t)-1)*yi + alpha.y*(6*s(t)-2) + beta.y*(6*s(t)-4);

end
