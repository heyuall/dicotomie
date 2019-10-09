function[]=variation(f,a,b)
% on evalue f en a et en b
    fa=feval(f,a);
    fb=feval(f,b);
    if fa <= fb
        disp ('croissnte')
    else
        disp('décroissante')
    end
end