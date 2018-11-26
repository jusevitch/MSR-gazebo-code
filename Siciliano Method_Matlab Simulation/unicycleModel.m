function xdot = unicycleModel(t,x,v,w)
    xdot = zeros(3,1);
    
    theta = x(3);
    xdot(1) = cos(theta) * v;
    xdot(2) = sin(theta) * v;
    xdot(3) = w;
end