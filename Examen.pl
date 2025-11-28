% HECHOS de lenguajes de programación y sus derivados ISWIM

% Derivados directos de ISWIM
deriva_de(ml, iswim).
deriva_de(sasli, iswim).
deriva_de(hope, iswim).

% Derivado de SASLI
deriva_de(krc, sasli).

% Derivado hacia Miranda
deriva_de(miranda, ml).
deriva_de(miranda, hope).
deriva_de(miranda, krc).

% Miranda a Haskell
deriva_de(haskell, miranda).

% Derivados de Haskell a Mondrian, Haskell++, O'Haskell
deriva_de(mondrian, haskell).
deriva_de(haskellpp, haskell).
deriva_de(ohaskell, haskell).

% --------------------------------------------------------------------------------

% REGLAS
derivados_de_ml(X) :- deriva_de(X, ml).

hijo_de(Hijo, Padre) :- deriva_de(Hijo, Padre).

hermanos(A, B) :-
    deriva_de(A, P),
    deriva_de(B, P),
    A \= B.

% --------------------------------------------------------------------------------

% Consultas 
% 1. Muestre los derivados de ML.
% derivados_de_ml(X).
% X = miranda ;
% true.



% 2. ¿Es hijo KRC de C++?
% hijo_de(krc, cpp).
% false.



% 3. ¿Es Mondrian lenguaje hermano de Haskell++?
% hermanos(mondrian, haskellpp).
% true.



% 4. Invente una regla. 
% Encontrar ancestros de un lenguaje:
ancestro(A, B) :- deriva_de(A, B).
ancestro(A, B) :- deriva_de(A, X), ancestro(X, B).

% ancestro(haskellpp, iswim).
% true ;
% ancestro(ml, sasli).
% false.



% 5. Invente una regla que utilice una expresión aritmética.   
% Hechos de años
anio(iswim, 1966).
anio(ml, 1973).
anio(hope, 1970).
anio(sasli, 1976).
anio(krc, 1981).
anio(miranda, 1985).
anio(haskell, 1990).
anio(mondrian, 1992).
anio(haskellpp, 1994).
anio(ohaskell, 1999).

% Regla: Determina la diferencia de años entre dos lenguajes
diferencia_de_anios(L1, L2, Dif) :-
    anio(L1, A1),
    anio(L2, A2),
    Dif is abs(A1 - A2).     

% Consultas
% diferencia_de_anios(haskell, miranda, X).
% X = 5 ;
% diferencia_de_anios(mondrian, ohaskell, X).
% X = 7 ;
% diferencia_de_anios(iswim, krc, X).
% X = 15 ;



% 6. Invente una regla que utilice un comparador.   
% Regla: indique si dos lenguajes están en la misma generación
misma_generacion(L1, L2) :-
    anio(L1, A1),
    anio(L2, A2),
    abs(A1 - A2) =< 5.   

% Consultas
% misma_generacion(haskell, mondrian).
% true ;
% misma_generacion(krc, haskell).
% false.
% misma_generacion(ml, hope).
% true ;