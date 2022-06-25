figure(1)
clear;clc;clf
%% a=-3
subplot(1,3,1)
eps=0.1;
a=-3;
p2_plt(0+eps,a);hold on;
axis([0,100,-5,5])
legend({'$\bf{x=0}$'},'Interpreter','Latex')
title('$\bf{a=-3}\ (a<-2)$','Interpreter','Latex')
%% a=-1
subplot(1,3,2)
a=-1;
p2_plt(0+eps,a);hold on;
p2_plt(sqrt(a+2)+eps,a)
axis([0,100,-5,5])
legend({'$\bf{x=0}$','$\bf{x=\sqrt{a+2}}$'},'Interpreter','Latex')
title('$\bf{a=-1}\ (-2<a<0)$','Interpreter','Latex')
%% a=1
subplot(1,3,3)
a=1;
p2_plt(0+eps,a);hold on;
p2_plt(sqrt(a+2)+eps,a)
axis([0,100,-5,5])
legend({'$\bf{x=0}$','$\bf{x=\sqrt{a+2}}$'},'Interpreter','Latex')
title('$\bf{a=1}\ (a>0)$','Interpreter','Latex')
%% bifurcation
figure(2)
clear;clc;clf
x1=linspace(-2,0,100);
x2=linspace(0,2,100);
hold on
plot(x1,zeros(1,100),'k')
plot(x2,zeros(1,100),'k--')
plot(x1,-sqrt(x1+2),'k--',x1,sqrt(x1+2),'k--',x2,-sqrt(x2+2),'k--',x2,sqrt(x2+2),'k--')
legend({'$\bf{stable}$','$\bf{unstable}$'},'fontsize',10 ,'Interpreter','latex')
xlabel('$\bf{a}$','Interpreter','Latex')
ylabel('$\bf{x}$','Interpreter','Latex')
% ylabel("$\bf{x's\ value\ of\ the\ fixed\ point}$",'Interpreter','Latex')
title(['$\bf{Bifurcation\ Diagram}$'] ,'Interpreter','latex')