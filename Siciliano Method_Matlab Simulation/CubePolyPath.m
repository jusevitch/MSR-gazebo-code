function [position, velocity, acceleration] = CubePolyPath(qi, qf, k, T)
    % qi: initial configuration
    % qf: final configuration
    % k: free parameter
    % T: total travel time
        
    % map from tspan to normalized s
    steps = 1000;
    tspan = linspace(0,T,steps);
    s = tspan / T;
    
    % define parameters of the polynomial
    xi = qi(1); yi = qi(2); thetai = qi(3);
    xf = qf(1); yf = qf(2); thetaf = qf(3);
    alpha.x = k*cos(thetaf) - 3*xf;
    alpha.y = k*sin(thetaf) - 3*yf;
    beta.x = k*cos(thetai) + 3*xi;
    beta.y = k*sin(thetai) + 3*yi;
    
    % positions
    position = zeros(steps,3);
    position(:,1) = s.^3*xf - (s-1).^3*xi + alpha.x*s.^2.*(s-1) + beta.x*s.*(s-1).^2;
    position(:,2) = s.^3*yf - (s-1).^3*yi + alpha.y*s.^2.*(s-1) + beta.y*s.*(s-1).^2;

    % velocities
    velocity = zeros(steps,2);
    velocity(:,1) = 3*s.^2*xf - 3*(s-1).^2*xi + alpha.x*(2*s.*(s-1) + s.^2) + beta.x*((s-1).^2 + 2*s.*(s-1));
    velocity(:,2) = 3*s.^2*yf - 3*(s-1).^2*yi + alpha.y*(2*s.*(s-1) + s.^2) + beta.y*((s-1).^2 + 2*s.*(s-1));
    if (k > 0)
        position(:,3) = atan2(velocity(:,2), velocity(:,1));  % heading angle
    else
        position(:,3) = atan2(velocity(:,2), velocity(:,1)) + pi;  % heading angle
    end

    % accelerations
    acceleration = zeros(steps,2);
    acceleration(:,1) = 6*s*xf - 6*(s-1)*xi + alpha.x*(6*s-2) + beta.x*(6*s-4);
    acceleration(:,2) = 6*s*yf - 6*(s-1)*yi + alpha.y*(6*s-2) + beta.y*(6*s-4);

end