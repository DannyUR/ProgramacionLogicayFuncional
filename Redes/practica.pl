% HECHOS 
% Red 1 (estrella) 
red1(pc1, r1, estrella).
red1(pc2, r1, estrella).
red1(pc3, r1, estrella).
red1(pc4, r1, estrella).
red1(sw1, r1, estrella).

% Red 2 (bus) 
red2(pc5, r2, bus).
red2(pc6, r2, bus).
red2(pc7, r2, bus).
red2(server1, r2, bus).

% Conexión entre redes 
conexion(sw1, router1).
conexion(router1, bus).


% Reglas
% 1. Mostrar las PCs de la red en estrella (red1)
pcs_de_red1(PC) :-
    red1(PC, r1, estrella),
    PC \= sw1.   

% 2. Si un dispositivo pertenece a una red
pertenece_a_red(Dispositivo, Red) :-
    red1(Dispositivo, Red, _).

pertenece_a_red(Dispositivo, Red) :-
    red2(Dispositivo, Red, _).

% 3. ¿Puede sw1 enviar ping a pc2?
puede_ping(Dis1, Dis2) :-
    red1(Dis1, R, _),
    red1(Dis2, R, _).

% 4. Saber si un dispositivo es una PC (INVENTADA)
es_pc(X) :-
    sub_atom(X, 0, 2, _, 'pc').

% 5. Regla con expresión aritmética 
% contar cuántas PCs hay en total entre la red1 y la red2
total_pcs(Total) :-
    % PCs en red1
    findall(P, (red1(P, _, _), P \= sw1), Lista1),
    length(Lista1, C1),

    % PCs en red2
    findall(X, (red2(X, _, _), X \= server1), Lista2),
    length(Lista2, C2),

    % Expresión aritmética
    Total is C1 + C2.

% 6. Regla con comparador 
% comparar cuántas PCs tiene cada red
comparar_pcs(Mensaje) :-
    % Contar PCs en red1
    findall(P, (red1(P, _, _), P \= sw1), L1),
    length(L1, C1),

    % Contar PCs en red2
    findall(X, (red2(X, _, _), X \= server1), L2),
    length(L2, C2),

    % Comparador
    ( C1 > C2 -> Mensaje = 'La red1 tiene mas computadoras';
      C1 < C2 -> Mensaje = 'La red2 tiene mas computadoras';
                 Mensaje = 'Ambas redes tienen el mismo numero de computadoras'
    ).


% Ejercicios 
% Muestre las PCs de la topología de estrella(red1)
pcs_de_red1(PC).
PC = pc1 ;
PC = pc2 ;
PC = pc3 ;
PC = pc4 ;
true.

% Verifique si pc6 pertenece a red2
pertenece_a_red(pc6, Red).
Red = r2.

% Verifique si sw1 puede hacer ping a pc2
puede_ping(sw1, pc2).
true.

% Verifique si pc(x) es una PC
es_pc(pc7).
true.
?- es_pc(pc3).
true.
?- es_pc(sw1).
false.

% contar cuántas PCs hay en total entre la red1 y la red2
total_pcs(T).
T = 7 ;
true.

% comparar cuántas PCs tiene cada red
comparar_pcs(M).
M = 'La red1 tiene mas computadoras'