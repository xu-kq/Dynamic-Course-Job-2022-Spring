function plot_Mandelbrot(cx,cy,mag)
N=50;K=1e-5;res=2^10;
Fractal=zeros(res,res);
xmin=cx-1.8/mag;xmax=cx+1.8/mag;
ymin=cy-1.5/mag;ymax=cy+1.5/mag;
p=linspace(cx-1.8/mag,cx+1.8/mag,res);
q=linspace(cy-1.5/mag,cy+1.5/mag,res);
[P,Q] = meshgrid(p,q);
C=P+1j*Q; clear P Q p q;
Z=C;
f=@(z)z.^4+3*z.^3+2*z.^2+0.2*z+1;
df=@(z)4*z.^3+9*z.^2+2*z+0.2;
% g=@(z)z.^3-1;
% dg=@(z)3*z.^2;
if mag==1
    for n = 1:N
       tmp=Z-f(Z)./df(Z);
       idx=abs(Z-tmp)<K;
       Z=tmp;
       Fractal(idx)=Fractal(idx)+1;
    end
else
    for n = 1:N
       tmp=Z-f(Z)./df(Z);
       idx=abs(Z-tmp)<K;
       Z=tmp;
       Fractal(idx)=Fractal(idx)+1;
    end
%     Fractal(Fractal==0)=N;
end
Fractal=flipud(Fractal);
im=imagesc(Fractal);
xticks(linspace(0,res,5))
xticklabels(linspace(xmin,xmax,5))
yticks(linspace(0,res,5))
yticklabels(linspace(ymax,ymin,5))
xlabel('$\bf{Re(z)}$','Interpreter','latex')
ylabel('$\bf{Im(z)}$','Interpreter','latex')
if cx==-0.6 && cy==0 && mag==1
    title('$\bf{Mandelbrot\ Set}$' ,'Interpreter','latex')
end
