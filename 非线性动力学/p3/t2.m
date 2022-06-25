clc
clf
clear all
nmax=1000;
p0=-1:0.1:1;
q0=-1:0.1:1;
eps=0.1;
for i=1:length(p0)
for j=1:length(q0)
p(1)=p0(i);
q(1)=q0(j);
for n=1:nmax-1
q(n+1)=q(n)+p(n);
p(n+1)=p(n)-q(n+1)^3;
end
figure(1);
if ~isnan(q(end))
plot(q(nmax/2:nmax),p(nmax/2:nmax),'.');
end
hold on;
end 
end
xlabel('\bf{q}','Interpreter','Latex')
ylabel('\bf{p}','Interpreter','Latex')
title('\bf{grid\ method}','Interpreter','Latex')