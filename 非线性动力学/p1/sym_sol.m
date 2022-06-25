syms a x
f=-x-a*x+x^3
f=-f+a*f+f^3-x
f=subs(f,a,1)
fun = @(x)- x - (- x^3 + 2*x)^3;
t=fzero(fun,1)
subs(diff(f,x),x,0)