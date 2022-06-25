function p2_plt(x0,a)
it = 0; maxit = 1e2;
x = zeros(maxit+1,1);
x(1) = x0; 
while(it < maxit)
   it = it +1;
   x(it+1) = -x(it)-a*x(it)+x(it)^3;
end
xx = 0:maxit;

plot(xx,x')
xlabel('$\bf{i}$','Interpreter','latex')
ylabel('$\bf{x_i}$','Interpreter','latex')
% legend('$\bf{y=f(x)}$','Interpreter','latex')