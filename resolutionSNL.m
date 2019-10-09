function[] = resolutionSNL(f,a,b,epsilon)
 % Initialisation
    c=a;
    d=b;
    x= a:b;

    % on evalue f en c et en d
    fc=feval(f,c);
    fd=feval(f,d);
    % si f(a) et f(b) ne sont pas de signe opposé, il n'y a pas de racine
    % dans [a;b]
    if sign(fc)==sign(fd)
        disp('erreur f(a) et f(b) de signe opposé');
        return;
    end
    variation(f,a,b)
    dichotomie(f,a,b,epsilon)
    
end