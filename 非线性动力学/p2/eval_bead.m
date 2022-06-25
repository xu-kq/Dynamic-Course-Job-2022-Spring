clear
clc
clf
tspan=0:0.01:500;                  % time domain
%%
g=10; R=1; m=1; 
x0=[pi/2,0,0,10*pi];

[t,x]=ode45(@(t,x)bead(t,x,m,g,R),tspan,x0);
figure(1); clf

subplot(4,1,1)
plot(t(end-500:end),x(end-500:end,1))
title('$\bf{Curve\ in\ Time\ Domain}$','Interpreter','Latex')
ylabel('$\bf{\theta}$','Interpreter','Latex')
subplot(4,1,2)
plot(t(end-500:end),x(end-500:end,2))
ylabel('$\bf{p_\theta}$','Interpreter','Latex')
subplot(4,1,3)
plot(t(end-500:end),x(end-500:end,3))
ylabel('$\bf{\phi}$','Interpreter','Latex')
subplot(4,1,4)
plot(t(end-500:end),x(end-500:end,4))
ylabel('$\bf{p_\phi}$','Interpreter','Latex')
xlabel('$\bf{t}$','Interpreter','Latex')

figure(2)
xx = R.*sin(x(:,1)).*cos(x(:,3));
yy = R.*sin(x(:,1)).*sin(x(:,3));
zz = R.*cos(x(:,1));
plot3(xx,yy,zz)
axis([-1,1,-1,1,-1,1])
xlabel('$\bf{x}$','Interpreter','Latex')
ylabel('$\bf{y}$','Interpreter','Latex')
zlabel('$\bf{z}$','Interpreter','Latex')
title('$\bf{Trajectory\ of\ Motion}$','Interpreter','Latex')

figure(3)
plot(x(:,1),x(:,2))
xlabel('$\bf{\theta}$','Interpreter','Latex')
ylabel('$\bf{p_\theta}$','Interpreter','Latex')
title('$\bf{Phase\ Portrait}$','Interpreter','Latex')