t = 0:0.01:50;
v = 0.5;
w = 0.2;

x0 = [3 0 pi/2];

[t,X] = ode45(@(t,x) unicycleModel(t,x,v,w), t, x0);

plot(X(:,1),X(:,2));