% pour que la valeur de cn de la suite � la n-i�me it�ration soit une valeur approch�e de  alpha � ?>0 pr�s, il suffit que n v�rifie:
% b?a / 2n+1??
% On a alors:
% ???cn??b?a/2n+1??
% ce qui permet de calculer � l'avance le nombre maximal n0?N d'it�rations assurant la pr�cision  epsilon.
% b?a/2n+1??  <=>  b?a/??2n+1  <=>  n?(log(b?a/?)/log(2))?1

function[n]= nbritera(a,b,epsilon)
n= ( log((b-a)/epsilon) / log(2))-1
end
