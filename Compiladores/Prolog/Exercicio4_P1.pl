%% BANCO DE DADOS
% Operadores: op(Precedência, Tipo, Func).
:-op(501, fy, '~') .
:-op(502, yfx, '&') .
:-op(502, yfx, '\/') .
:-op(503, yfx, '==>') .
:-op(504, yfx, '<==>' ) .

%% DEFININDO REGRAS
fbf(_) .

fbf(true) :-
    fbf(X) .

fbf(false) :-
    fbf(X) .

fbf('~'X):-
    fbf(X) .

fbf((X'\/'Y)):-
    fbf(X) .

fbf((X'&'Y)):-
    fbf(X) .

fbf((X'==>'Y)):-
    fbf(X) .

fbf((X'<==>' Y)):-
    fbf(X) .

fbf((X)):-
    fbf(X) .



