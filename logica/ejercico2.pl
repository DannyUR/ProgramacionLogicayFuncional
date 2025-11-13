% HECHOS 

% Superfamilia
familia(hominidea, hominoidea).
familia(hylobatidae, hominoidea).

% Familias - Subfamilias
familia(homininae, hominidea).
familia(ponginae, hominidea).

% Subfamilias - Tribus
familia(hominini, homininae).
familia(gorillini, homininae).

% Subfamilia Ponginae - Género
familia(pongo, ponginae).

% Familias - Género
familia(hylobates, hylobatidae).

% Tribus - Géneros
familia(homo, hominini).
familia(pan, hominini).
familia(gorilla, gorillini).

% Géneros - Especies
familia(human, homo).
familia(bonobo, pan).
familia(chimpanzee, pan).
familia(gorilla_especie, gorilla).
familia(orangutan, pongo).
familia(gibbon, hylobates).


%  REGLAS 

% descendiente directo o indirecto
descendiente(X, Y) :- familia(X, Y).
descendiente(X, Y) :- familia(X, Z), descendiente(Z, Y).

% ancestro directo o indirecto
ancestro(X, Y) :- descendiente(Y, X).

% hermanos taxonómicos (mismo padre inmediato)
hermanos(X, Y) :- familia(X, P), familia(Y, P), X \= Y.

% hijos directos (nivel inferior inmediato)
hijo_directo(Ancestro, Hijo) :- familia(Hijo, Ancestro).

% existe una ruta 
ruta(X, Y) :- descendiente(X, Y).



% CONSULTAS 
% 1.¿Es el gorila descendiente de hominini?
% descendiente(gorilla, hominini).
% false.

% 2.¿Es el Homo hermano del gorila?
% hermanos(homo, gorilla).
% false.

% 3.¿Son el Homo y el Gorila de la misma subfamilia?
% descendiente(homo, homininae), descendiente(gorilla, homininae).
% true ;
% false.

% Opción 2:
% escendiente(homo, Sub), descendiente(gorilla, Sub).
% Sub = homininae ;
% Sub = hominidea ;
% Sub = hominoidea ;
% false

% 4.¿Tiene Hominini la misma familia que Pongo?
% descendiente(hominini, F), descendiente(pongo, F).
% F = hominidea ;
% F = hominoidea ;
% false.

% 5.¿Quiénes son los descendientes directos de una tribu?
% familia(Hijo, hominini).
% Hijo = homo ;
% Hijo = pan

% 6.¿Cuál es la superfamilia a la que pertenece Hylobates?
% descendiente(hylobates, Super).
% Super = hylobatidae ;
% Super = hominoidea ;
% false.

% 7.¿Qué géneros comparten la misma subfamilia con Pan?
% descendiente(X, homininae), familia(X, _), descendiente(pan, homininae).
% X = hominini ;
% X = gorillini ;
% X = homo ;
% X = pan ;
% X = gorilla ;
% X = human ;
% X = bonobo ;
% X = chimpanzee ;
% X = gorilla_especie ;
% false.

% 8.¿Cuál es el ancestro común más cercano entre Homo y Gorila?
% descendiente(homo, X), descendiente(gorilla, X).
% X = homininae ;
% X = hominidea ;
% X = hominoidea ;
% false.

% 9.¿Es el orangután un homínido?
% descendiente(orangutan, hominidea).
% true .

% 10.¿Cuáles son todas las especies que pertenecen a la familia Hominidae?
% descendiente(Especie, hominidea).
% Especie = homininae ;
% Especie = ponginae ;
% Especie = hominini ;
% Especie = gorillini ;
% Especie = pongo ;
% Especie = homo ;
% Especie = pan ;
% Especie = gorilla ;
% Especie = human ;
% Especie = bonobo ;
% Especie = chimpanzee ;
% Especie = gorilla_especie ;
% Especie = orangutan ;
% false.

% 11.¿Qué géneros son hermanos taxonómicos de Homo?
% hermanos(homo, Hermano).
% Hermano = pan.

% 12.¿Comparten Homo y Hylobates la misma familia?
% descendiente(homo, F), descendiente(hylobates, F).
% F = hominoidea ;
% false.

% 13.¿Cuáles son los descendientes directos de la subfamilia Hominiae?
% familia(Hijo, homininae).
% Hijo = hominini ;
% Hijo = gorillini.


% 14.¿Qué géneros están bajo la familia Hominidae?
% descendiente(X, hominidea), familia(X, _), \+ familia(_, X).
% X = human ;
% X = bonobo ;
% X = chimpanzee ;
% X = gorilla_especie ;
% X = orangutan ;
% false.

% 15.¿Cuál es la ruta toxonómica completa desde Homo hasta la superfamilia?
% descendiente(homo, X).
% X = hominini ;
% X = homininae ;
% X = hominidea ;
% X = hominoidea ;
% false.