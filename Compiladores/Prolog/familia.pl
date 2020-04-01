% DADOS
pai(jose, joao) .
pai(jose, nachor) .
pai(jose, marcio) .
pai(joao, flavio) .
pai(marcio, ricardo) .
pai(marcio, julia) .
mae(silvia, flavio) . 
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
filho(X) :- pai(Y, X), homem(X) .
filho(X) :- mae(Y, X), homem(X) .

% Regra: filha(X)
% Significado: X é filha de Y se Y é pai de X e X é mulher ou X é filha de Y se Y é mãe de X e X é mulher
filha(X):  -pai(Y, X), mulher(X) ;
filha(X):  -mae(Y, X), mulher(X) .

% Regra: umpai(Y)
% Significado: Y é um dos pais de X se Y é pai de X ou se Y é mãe de X
umpai(Y): -pai(Y, X) ;
umpai(Y): -mae(Y, X) . 

% Regra: umavo(X)
% Significado: X é um avô ou avó se X for um dos pais de alguém que é um dos pais de alguma outra
umavo(X): -umpai(umpai(_)), mulher(X) ;
umavo(X): -umpai(umpai(_)), homem(X) .

% Regra: ancestral(X)
% Significado: X é ancestral de Y se X for um dos pais de Y ou se X for um dos pais de alguém que seja ancestral de Y
ancestral(X): -umpai(Y) ;
ancestral(X): -umpai(umpai(_)) .

 