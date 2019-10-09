f =inline(' exp(x)+3*sqrt(x)-2');
g= inline('log10( abs((exp(x)+3*sqrt(x)-2))');
%initiation
a=0
b=1
epsilon = 1e-10
resolutionSNL(f,a,b,epsilon)
nbritera(a,b,epsilon)
Vitessedicho(f,g,x)
