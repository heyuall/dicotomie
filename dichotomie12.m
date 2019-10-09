%1)Algorithme

% Tant que (b - a) > ? 
%     m ? (a + b) / 2
%     Si (f(a)*f(m) ? 0) alors
%        b ? m
%     sinon
%        a ? m
%     FinSi
%  Fin
%  Avec  ? la précision souhaitée.


%2)

function[x,c,d]=dichotomie(f,a,b,epsilon,n_max)
% Entree : f la fonction continue sur [a;b]
%          a et b les valeurs des bords de l'intervalle [a;b]
%          epsilon la tolerance
%          n_max le nombre d'iteration maximal en cas de divergence
% Sortie : x la valeur en f tel que f(x)=0
%          c et d les valeurs des bords de l'intervalle [c;d] qui contient
%          la solution
% Calcul d'une racine de f par la méthode iterative de Dichotomie tel que
% si f(a) et f(b) sont de signe opposé, on peut couper équitablement (
% (a+b)/2 ) l'intervalle en deux puis iterer sur l'intervalle qui contient
% la racine.

    % Initialisation
    c=a;
    d=b;
    drapeau=0;
    n_iter=0;
    % on evalue f en c et en d
    fc=feval(f,c);
    fd=feval(f,d);
    % si f(a) et f(b) ne sont pas de signe opposé, il n'y a pas de racine
    % dans [a;b]
    if sign(fc)==sign(fd)
        disp('erreur f(a) et f(b) de signe opposé');
        return;
    end
    % tant que l'intervalle est plus grand que la tolerance Epsilon, que le
    % nombre d'iteration maximal n'est pas atteint et que f(x)~=0 (drapeau)
    while( abs(d-c)>epsilon && drapeau ==0 && n_iter <n_max)
        % on coupe l'intervalle en 2, soit x son milieu
        x=(c+d)/2;
        % on evalue f en ce milieu (x)
        fx=feval(f,x);
        % si c'est l'intervalle [c;x] qui contient la racine, on itere dans
        % cet intervalle
        if sign(fc)~=sign(fx)
            d=x;
        % si c'est dans l'intervalle [x;d], on itere dans celui-ci
        elseif sign(fx)~=(fd)
                c=x;
        else
        % sinon c'est qu'on a atteint la racine et on increment le drapeau
        % pour arreter l'algo
                drapeau =1;
        end
        n_iter=n_iter+1;
    end
 
end
