% FATOS
% Predicado: homem(X), X é homem
homem(X) .
% Predicado: mulher(X), X é mulher
mulher(X) .
% Predicado: Y é pai de X
pai(Y, X) .
% Predicado: Y é mae de X
mae(Y, X) .
% Predicado: Y é ancestral de X
ancestral(Y, X) . 

% DADOS
pai(jose, joao) .
filho(joao, jose) .
pai(jose, nachor) .
filho(nachor, jose) .
pai(jose, marcio) .
filho(marcio, jose) .
pai(joao, flavio) .
filho(flavio, jose) .
pai(marcio, ricardo) .
filho(ricardo, marcio) .
pai(marcio, julia) .
filha(julia, marcio) .
mae(silvia, flavio) . 
filho(flavio, silvia) .
homem(jose) . 
homem(joao) . 
homem(marcio) . 
homem(nachor) .
homem(flavio) .
homem(ricardo) . 
mulher(silvia) .
mulher(julia) .
mulher(maria) .




% REGRAS
% Regra: filho(X)
% Significado: X é filho de Y se Y é pai de X e X é homem ou se Y é mãe de X e X é homem
filho(X, Y) : -pai(Y, X), homem(X) .
filho(X, Y) : -mae(Y, X), homem(X) .

% Regra: filha(X)
% Significado: X é filha de Y se Y é pai de X e X é mulher ou X é filha de Y se Y é mãe de X e X é mulher
filha(X, Y):  -pai(Y, X), mulher(X) .
filha(X, Y):  -mae(Y, X), mulher(X) .

% Regra: umpai(Y)
% Significado: Y é um dos pais de X se Y é pai de X ou se Y é mãe de X
umpai(Y, X): -pai(Y, X) .
umpai(Y, X): -mae(Y, X) . 

% Regra: umavo(X)
% Significado: X é um avô ou avó se X for um dos pais de alguém que é um dos pais de alguma outra
umavo(X): -umpai(umpai(_)), mulher(X) .
umavo(X): -umpai(umpai(_)), homem(X) .

% Regra: ancestral(X)
% Significado: X é ancestral de Y se X for um dos pais de Y ou se X for um dos pais de alguém que seja ancestral de Y
ancestral(X,Y): -umpai(Y) .
ancestral(X,Y): -umpai(umpai(_)) .

 