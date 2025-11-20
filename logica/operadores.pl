
% OPERADORES ARITMÉTICOS

% Suma 
ejemplo_suma(X,Y,R) :- R is X + Y.
% ejemplo_suma(10,2,R).        % R = 12

% Resta
ejemplo_resta(X,Y,R) :- R is X - Y.
% ejemplo_resta(10,2,R).       % R = 8

% Multiplicación
ejemplo_mult(X,Y,R) :- R is X * Y.
% ejemplo_mult(10,2,R).        % R = 20

% División Real
ejemplo_divr(X,Y,R) :- R is X / Y.
% ejemplo_divr(10,2,R).        % R = 5.0

% División Entera
ejemplo_dive(X,Y,R) :- R is X div Y.
% ejemplo_dive(10,2,R).        % R = 5

% Resto de la división
ejemplo_divresto(X,Y,R) :- R is X mod Y.
% ejemplo_divresto(10,2,R).    % R = 0

% Elevado
ejemplo_elevado(X,Y,R) :- R is X ^ Y.
% ejemplo_elevado(10,2,R).     % R = 100

% Negación
ejemplo_n(X,R) :- R is -X.
% ejemplo_n(10,R).             % R = -10

% Valor Absoluto
ejemplo_abs(X,R) :- R is abs(X).
% ejemplo_abs(10,R).          % R = 10

% Arco Coseno 
ejemplo_acos(X,R) :- R is acos(X).
% ejemplo_acos(1,R).           % R = 0.0   

% Arco Seno
ejemplo_asin(X,R) :- R is asin(X).
% ejemplo_asin(1,R).           % R = 1.57079632679

% Arco Tangente
ejemplo_atan(X,R) :- R is atan(X).
% ejemplo_atan(10,R).          % R ≈ 1.4711

% Coseno
ejemplo_cos(X,R) :- R is cos(X).
% ejemplo_cos(10,R).           % R ≈ -0.83907

% Exponencial
ejemplo_exp(X,R) :- R is exp(X).
% ejemplo_exp(10,R).           % R ≈ 22026.46579

% Logaritmo neperiano
ejemplo_ln(X,R) :- R is log(X)/log(2).
% ejemplo_ln(10,R).            % R ≈ 3.3219280948873626.

% Logaritmo Base 2
ejemplo_log(X,R) :- R is log(X).
% ejemplo_log(10,R).           % R ≈ 2.302585092994046.

% Seno
ejemplo_sin(X,R) :- R is sin(X).
% ejemplo_sin(10,R).           % R ≈ -0.5440

% Raíz cuadrada
ejemplo_sqrt(X,R) :- R is sqrt(X).
% ejemplo_sqrt(10,R).          % R ≈ 3.162277

% Tangente
ejemplo_tan(X,R) :- R is tan(X).
% ejemplo_tan(10,R).           % R ≈ 0.64836

% Redondeo con N decimales
ejemplo_round(X, N, R) :-
    P is 10 ** N,
    R is round(X * P) / P.
% ejemplo_round(10.567,2,R).   % R = 10.57




% COMPARADORES (true / false)

% X es menor que Y
ejemplo_menor(X,Y,R) :- (X < Y -> R = true ; R = false).
% ejemplo_menor(10,2,R).       % R = false
% ejemplo_menor(2,10,R).       % R = true

% X es mayor que Y
ejemplo_mayor(X,Y,R) :- (X > Y -> R = true ; R = false).
% ejemplo_mayor(10,2,R).       % R = true

% X es menor o igual que Y
ejemplo_mq(X,Y,R) :- (X =< Y -> R = true ; R = false).
% ejemplo_mq(10,10,R).         % R = true

% X es mayor o igual que Y
ejemplo_maq(X,Y,R) :- (X >= Y -> R = true ; R = false).
% ejemplo_maq(10,2,R).         % R = true

% X es igual que Y (numérico)
ejemplo_igual(X,Y,R) :- (X = Y -> R = true ; R = false).
% ejemplo_igual(10,10,R).      % R = true

% X es distinto que Y (numérico)
ejemplo_dis(X,Y,R) :- (X \= Y -> R = true ; R = false).
% ejemplo_dis(10,2,R).         % R = true




% COMPARACIÓN SINTÁCTICA

% La expresión X es igual a la expresión Y
ejemplo_expigual(X,Y,R) :- (X == Y -> R = true ; R = false).
% ejemplo_expigual(10,10,R).   % R = true

% La expresión X es distinta que la expresión Y
ejemplo_expdis(X,Y,R) :- (X \== Y -> R = true ; R = false).
% ejemplo_expdis(10,2,R).      % R = true

% X es menor que Y (sintáctico)
ejemplo_men(X,Y,R) :- (X @< Y -> R = true ; R = false).
% ejemplo_men(10,2,R).         % R = false

% X es mayor que Y (sintáctico)
ejemplo_may(X,Y,R) :- (X @> Y -> R = true ; R = false).
% ejemplo_may(10,2,R).         % R = true

% X es menor o igual que Y (sintáctico)
ejemplo_meni(X,Y,R) :- (X @=< Y -> R = true ; R = false).
% ejemplo_meni(10,10,R).       % R = true

% X es mayor igual que Y (sintáctico)
ejemplo_mayi(X,Y,R) :- (X @>= Y -> R = true ; R = false).
% ejemplo_mayi(10,2,R).        % R = true
