%% test formation
close all;
clear all;

center.qi_x = 0;
center.qi_y = 0;
center.qi_theta = pi/2;
n = 15;
figure(1);
for idx = 1:n 
    [x,y,~,R,theta] = v_formation(idx, n, center); 
    plot(x,y,'k*'); hold on;
end
hold off;

%%
% helper functions: create formations
% initialize the pose for straight line formation
function [x,y,z,R,theta] =line_formation(idx, n, center) 
    c_idx = ceil(n/2);
    
    % center pose
    cx = center.qi_x;
    cy = center.qi_y;
    ctheta = center.qi_theta;
    cz = 0.1;
    % offset of the agent (in the body-fixed frame)
    R = c_idx - idx;
    theta = 0;
    
    % intial agent pose in the global frame
    x = cx + R*cos(ctheta + theta);
    y = cy + R*sin(ctheta + theta);
    z = cz;
end

% initialize the pose for circle formation
function [x,y,z,R,theta] =circle_formation(idx, n, center) 
    % center pose
    cx = center.qi_x;
    cy = center.qi_y;
    ctheta = center.qi_theta;
    cz = 0.1;
    
    % offset of the agent (in the body-fixed frame)
    R = 2;
    theta = (idx-1)/n * (2*pi);
    
    % intitial postion in the global frame
    x = cx + R*cos(ctheta + theta);
    y = cy + R*sin(ctheta + theta);
    z = cz; 
end

% initialize the pose for square formation
function [x,y,z,R,theta] = square_formation(idx, n, center) 
    % center pose
    cx = center.qi_x;
    cy = center.qi_y;
    ctheta = center.qi_theta;
    cz = 0.1;
    
    % square width
    l = n/4 * 1;
    
    % offset of the agent (in the body-fixed frame)
    theta = (idx-1)/n * (2*pi) + pi/4
    if (idx <= n/4)
       R = l/2 / sin(theta); 
    elseif (idx <= n/2)
       R = -l/2 / cos(theta);
    elseif (idx <= n*3/4)
       R = -l/2 / sin(theta);
    else
       R =l/2 / cos(theta);
    end
       
    % intitial postion in the global frame
    x = cx + R*cos(ctheta + theta);
    y = cy + R*sin(ctheta + theta);
    z = cz; 
end

% initialize the pose for diamond formation
function [x,y,z,R,theta] = diamond_formation(idx, n, center) 
    % center pose
    cx = center.qi_x;
    cy = center.qi_y;
    ctheta = center.qi_theta;
    cz = 0.1;
    
    % distance
    d = 1;
    num = n/4;
    % skew angle
    s = pi/10;
    
    % offset of the agent (in the body-fixed frame)
    %theta = (idx-1)/n * (2*pi) + pi/4
    if (idx <= n/4)
       x = (num-1)*(d*cos(s)) - (idx-1)*(d*cos(s)) 
       y = (idx-1)*(d*sin(s))
       R = sqrt(x^2+y^2);
       theta = atan2(y,x);
    elseif (idx <= n/2)
       x =  - (idx-1-n/4)*(d*cos(s)); 
       y = (num-1)*(d*sin(s)) - (idx-1-n/4)*(d*sin(s));
       R = sqrt(x^2+y^2);
       theta = atan2(y,x);
    elseif (idx <= n*3/4)
       x = -(num-1)*(d*cos(s)) + (idx-1-n/2)*(d*cos(s)); 
       y =  - (idx-1-n/2)*(d*sin(s));
       R = sqrt(x^2+y^2); 
       theta = atan2(y,x);
    else
       x = (idx-1-n*3/4)*(d*cos(s)); 
       y = -(num-1)*(d*sin(s)) + (idx-1-n*3/4)*(d*sin(s));
       R = sqrt(x^2+y^2); 
       theta = atan2(y,x);
    end
       
    % intitial postion in the global frame
    x = cx + R*cos(ctheta + theta);
    y = cy + R*sin(ctheta + theta);
    z = cz; 
end

% initialize the pose for v shape formation
function [x,y,z,R,theta] = v_formation(idx, n, center) 
    % center pose
    cx = center.qi_x;
    cy = center.qi_y;
    ctheta = center.qi_theta;
    cz = 0.1;
    
    % distance
    d = 1;
    dk = ceil(n/4);
    % skew angle
    s = pi/10;
    
    % center idx
    c_idx = ceil(n/2);
    
    % offset of the agent (in the body-fixed frame)
    x = cx + dk - d*abs(idx-c_idx) * cos(s);
    y = cy + d*(idx-c_idx) * sin(s);
    theta = atan2(y,x);
    R = sqrt(x^2+y^2);
    
    % intitial postion in the global frame
    x = cx + R*cos(ctheta + theta);
    y = cy + R*sin(ctheta + theta);
    z = cz; 
    
end

% initialize the pose for star shape formation
function [x,y,z,R,theta] = star_formation(idx, n, center)
    g_num = 5;
    g_size = n / g_num;
    sigma = 0.5;
    
    cx = center.qi_x;
    cy = center.qi_y;
    ctheta = center.qi_theta;
    cz = 0.1;
    
    % the group of the node idx, and the index inside that group
    g = floor((idx-1) / g_size);
    idx_g = mod(idx-1, g_size);
    
    %
    R = idx_g + 1
    
    switch g
        case 0
            theta = 0;
            x = cx + R * cos(theta+ctheta);
            y = cy + R * sin(theta+ctheta);
            z = cz;
        case 1
            theta = 2/5*pi;
            x = cx + R * cos(theta+ctheta);
            y = cy + R * sin(theta+ctheta);
            z = cz;
        case 2
            theta = 4/5*pi;
            x = cx + R * cos(theta+ctheta);
            y = cy + R * sin(theta+ctheta);
            z = cz;
        case 3
            theta = 6/5*pi;
            x = cx + R * cos(theta+ctheta);
            y = cy + R * sin(theta+ctheta);
            z = cz;
        case 4
            theta = 8/5*pi;
            x = cx + R * cos(theta+ctheta);
            y = cy + R * sin(theta+ctheta);
            z = cz;
    end
            
end

