function dxdt=nead(t,x,m,g,R)
dxdt=[x(2)/(m*R^2);
      +x(4)^2*cos(x(1))/(m*R^2*sin(x(1))^3)+m*g*R*sin(x(1))
      x(4)/(m*R^2*sin(x(1))^2)
      0];
