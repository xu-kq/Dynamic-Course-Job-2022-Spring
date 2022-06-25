clear;clc;clf
x1=linspace(-2,0,100);
x2=linspace(0,2,100);
hold on
plot(x1,zeros(1,100),'k')
plot(x2,zeros(1,100),'k--',[x1,x2],ones(1,200),'k--')
legend({'$\bf{stable}$','$\bf{unstable}$'},'fontsize',10 ,'Interpreter','latex')
ylabel("$\bf{x's\ value\ of\ the\ balanced\ point}$",'Interpreter','Latex')
xlabel('$\bf{a}$','Interpreter','Latex')
% ylabel("$\bf{x's\ value\ of\ the\ fixed\ point}$",'Interpreter','Latex')
title(['$\bf{Bifurcation\ Diagram}$'] ,'Interpreter','latex')
axis([-2,2,-0.1,1.1])