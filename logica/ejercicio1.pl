%Hechos
jefe(mark_zuckerberg, sheryl_sandberg).
jefe(mark_zuckerberg, david_wehner).
jefe(mark_zuckerberg, timothy_campos).
jefe(mark_zuckerberg, mike_schroepfer).
jefe(mark_zuckerberg, elliot_schrage).
jefe(mark_zuckerberg, lori_goler).
jefe(sheryl_sandberg, david_wehner).
jefe(sheryl_sandberg, timothy_campos).
jefe(sheryl_sandberg, mike_schroepfer).
jefe(sheryl_sandberg, elliot_schrage).
jefe(sheryl_sandberg, lori_goler).
jefe(elliot_schrage, rebecca_vandyck).
jefe(elliot_schrage, heather_freeland).


% --- Consultas pedidas ---
% ¿Quién es el jefe de Rebecca?
% ?- jefe(Jefe, rebecca_vandyck).
% Jefe = elliot_schrage.

% ¿Es jefe Mark del jefe de Rebecca?
% jefe(mark_zuckerberg, Jefe), jefe(Jefe, rebecca_vandyck).
% Jefe = elliot_schrage

% ¿Es Lori jefe de alguien?
% jefe(lori_goler,X).
% false.

% Mostrar empleados del jefe de Heather
% jefe(Jefe, heather_freeland), jefe(Jefe, Empleado).
% Jefe = elliot_schrage,
% Empleado = rebecca_vandyck

% ¿Es Timothy jefe de Rebecca?
% jefe(timothy_campos,rebecca_vandyck).
% false.

% Mostrar compañeros de nivel de Mike
%  jefe(X,mike_schroepfer),jefe(X,Compañeros).
% X = mark_zuckerberg,
% Compañeros = sheryl_sandberg ;
% X = mark_zuckerberg,
% Compañeros = david_wehner ;
% X = mark_zuckerberg,
% Compañeros = timothy_campos ;
% X = mark_zuckerberg,
% Compañeros = mike_schroepfer ;
% X = mark_zuckerberg,
% Compañeros = elliot_schrage ;
% X = mark_zuckerberg,
% Compañeros = lori_goler ;
% X = sheryl_sandberg,
% Compañeros = david_wehner ;
% X = sheryl_sandberg,
% Compañeros = timothy_campos ;
% X = sheryl_sandberg,
% Compañeros = mike_schroepfer ;
% X = sheryl_sandberg,
% Compañeros = elliot_schrage ;
% X = sheryl_sandberg,
% Compañeros = lori_goler.

% ¿Es el jefe de Rebeca compañero de nivel de David?
% jefe(Jefe,rebecca_vandyck),jefe(Jefe2,Jefe),jefe(Jefe2,david_wehner).
% Jefe = elliot_schrage,
% Jefe2 = mark_zuckerberg ;
% Jefe = elliot_schrage,
% Jefe2 = sheryl_sandberg

% ¿Es compañero de nivel Mike de Lori?
% jefe(Jefe,mike_schroepfer),jefe(Jefe,lori_goler).
% Jefe = mark_zuckerberg ;
% Jefe = sheryl_sandberg
