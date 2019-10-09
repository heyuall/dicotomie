% pour que la valeur de cn de la suite à la n-ième itération soit une valeur approchée de  alpha à ?>0 près, il suffit que n vérifie:
% b?a / 2n+1??
% On a alors:
% ???cn??b?a/2n+1??
% ce qui permet de calculer à l'avance le nombre maximal n0?N d'itérations assurant la précision  epsilon.
% b?a/2n+1??  <=>  b?a/??2n+1  <=>  n?(log(b?a/?)/log(2))?1

function[n]= nbritera(a,b,epsilon)
n= ( log((b-a)/epsilon) / log(2))-1
end
