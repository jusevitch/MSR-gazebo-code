function [path, velocity, acceleration] = ParametricPath_Funct(centers, Radius, wd, T, path_type)

% circular path
    if (strcmp(path_type,'circular')) 
       % center location
       xc = centers(1);
       yc = centers(2);
       % Radius
       R = Radius(1);
       % reference path
       path.x = @(t) xc + R*cos(wd*t);
       path.y = @(t) yc + R*sin(wd*t); 
      
       % reference velocity
       velocity.x = @(t) -R*wd*sin(wd*t);
       velocity.y = @(t) R*wd*cos(wd*t);
       path.theta = @(t) atan2(velocity.y(t), velocity.x(t));  % heading angle
   
       
       % relerence acceleration
       acceleration.x = @(t) -R*wd^2*cos(wd*t);
       acceleration.y = @(t) -R*wd^2*sin(wd*t);
    end
        
    if (strcmp(path_type,'eightshape'))
       % center location
       xc = centers(1);
       yc = centers(2);
       % Radius
       R1 = Radius(1);
       R2 = Radius(2);
       % reference path
       path.x = @(t) xc + R1*sin(2*wd*t);
       path.y = @(t) yc + R2*sin(wd*t); 
      
       % reference velocity
       velocity.x = @(t) 2*R1*wd*cos(2*wd*t);
       velocity.y = @(t) R2*wd*cos(wd*t);  
       path.theta = @(t) atan2(velocity.y(t), velocity.x(t));  % heading angle
       
       % relerence acceleration
       acceleration.x = @(t) -4*R1*wd^2*sin(2*wd*t);
       acceleration.y = @(t) -R2*wd^2*sin(wd*t);
    end
end