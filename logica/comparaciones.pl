% 1. Comparar área del círculo
area_circulo(Radio,Area):- Area is pi * Radio ** 2.
comparar_area(Radio, Limite, Resultado):-
    area_circulo(Radio, Area),
    (Area > Limite -> Resultado = 'Mayor'; 
    Area =:= Limite -> Resultado = 'Igual';
    Resultado = 'Menor'
    ).
% comparar_area(5, 50, R).
% R = 'Mayor'
% comparar_area(10, 314.1592653589793, R).
% R = 'Igual'
% comparar_area(1, 314.1592653589793, R).
% R = 'Menor'


% 2. Comparar perímetro de un cuadrado
comparar_perimetro(Lado, Limite, Resultado):-
    Perimetro is Lado * 4,
    (Perimetro > Limite -> Resultado = 'Mayor';
    Perimetro =:= Limite -> Resultado = 'Igual';
    Resultado = 'Menor'
    ).
% comparar_perimetro(10, 30, R).
% R = 'Mayor'.
% comparar_perimetro(7.5, 30, R).
% R = 'Igual'.
% comparar_perimetro(5, 30, R).
% R = 'Menor'.


% 3. Verificar si el número es positivo, negativo o cero
verificar_numero(Num, Resultado) :-
    ( Num > 0 -> Resultado = 'Positivo';
      Num < 0 -> Resultado = 'Negativo';
      Resultado = 'Cero'
    ).
% verificar_numero(-3, R).
% R = 'Negativo'.
% verificar_numero(3, R).
% R = 'Positivo'.
% verificar_numero(0, R).
% R = 'Cero'.


% 4. Comparar la raíz cuadrada con un valor
comparar_raiz(Num, Limite, Resultado) :-
    Raiz is sqrt(Num),
    ( Raiz > Limite -> Resultado = 'Mayor';
      Raiz =:= Limite -> Resultado = 'Igual';
      Resultado = 'Menor'
    ).
% comparar_raiz(49, 7, R).
% R = 'Igual'.
% comparar_raiz(64, 7, R).
% R = 'Mayor'.
% comparar_raiz(27, 7, R).
% R = 'Menor'.


% 5. Calcular área de triángulo y verificar si es mayor que 50
area_triangulo(Base, Altura, Resultado) :-
    Area is (Base * Altura) / 2,
    ( Area > 50 -> Resultado = 'Mayor';
      Area =:= 50 -> Resultado = 'Igual';
      Resultado = 'Menor'
    ).
% area_triangulo(10, 12, R).
% R = 'Mayor'.
% area_triangulo(10, 10, R).
% R = 'Igual'.
% area_triangulo(5, 10, R).
% R = 'Menor'.


% 6. Verificar si el número es par o impar
par_o_impar(Num, Resultado) :-
    ( 0 is Num mod 2 -> Resultado = 'Par';
      Resultado = 'Impar'
    ).
% par_o_impar(7, R).
% R = 'Impar'.
% par_o_impar(10, R).
% R = 'Par'.


% 7. Comparar el logaritmo natural
comparar_log(Num, Limite, Resultado) :-
    Log is log(Num),
    ( Log > Limite -> Resultado = 'Mayor';
      Log =:= Limite -> Resultado = 'Igual';
      Resultado = 'Menor'
    ).
% comparar_log(10, 2, R).
% R = 'Mayor'.
% comparar_log(7.38905609893065, 2, R).
% R = 'Igual'.
% comparar_log(5, 2, R).
% R = 'Menor'.

% 8. Calcular potencia y verificar si supera 100
comparar_potencia(Base, Exp, Resultado) :-
    Pot is Base ** Exp,
    ( Pot > 100 -> Resultado = 'Mayor';
      Pot =:= 100 -> Resultado = 'Igual';
      Resultado = 'Menor'
    ).
%  comparar_potencia(3, 5, R).
% R = 'Mayor'.
%  comparar_potencia(10, 2, R).
% R = 'Igual'.  
%  comparar_potencia(2, 5, R).
% R = 'Menor'.
