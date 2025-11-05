valioso(oro).
valioso(plata).
le_gusta(juan,maria).
tiene(juan,libro).
tiene(maria,libro).
% DIAGRAMA
progenitor(clara,jose).
progenitor(tomas,jose).
progenitor(tomas,isabel).
progenitor(jose,ana).
progenitor(jose,patricia).
progenitor(patricia,jaime).

%progenitor(X,ana), progenitor(Y,X), progenitor(Y,Z).
%¿ Es ana tia de jaime?
%progenitor(X,ana), progenitor(Y,jaime).
%X = jose,
%Y = patricia.

%¿ Es ana tia de isabel?
%progenitor(X,isabel), progenitor(Y,X), progenitor(X,ana).
%false.