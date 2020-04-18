%%% EXEMPLOS
%% Fbf's corretas:
% fbf((a & b) <==> c) 
% fbf((a \/ b) <==> (c & d))
% fbf(a & b \/ c ==> d) 
% fbf((a & b & c) <==> (a \/ b \/c))
% fbf((a \/ (~b)) ==> ((~a) & b)) 

%% Fbf's incorretas:
% fbf(a \/ ~b ==> ~a & b) 
% fbf(~ (a & ~b) ~ ==> c) 
% fbf( c ==> b & a~) 
% fbf((a) 
% fbf(a & ~b ==> &c) 

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

fbf(~X):-
    fbf(X) .

fbf((X\/Y)):-
    fbf(X) .

fbf((X&Y)):-
    fbf(X) .

fbf((X==>Y)):-
    fbf(X) .

fbf((X<==>Y)):-
    fbf(X) .

fbf((X)):-
    fbf(X) .



