%% DADOS
% Definição de estados: estadon(X) indica um estado da região norte, e estados(X), um estado da região sul.

estadon(ac) .
estadon(al) .
estadon(ap) .
estadon(am) .
estadon(ba) .
estadon(ce) .
estados(df) .
estados(es) .
estados(go) .
estadon(ma) .
estados(mt) .
estados(ms) .
estados(mg) .
estadon(pa) .
estadon(pb) .
estados(pr) .
estadon(pe) .
estadon(pi) .
estados(rj) .
estadon(rn) .
estados(rs) .
estadon(ro) .
estadon(rr) .
estados(sc) .
estados(sp) .
estadon(se) .
estadon(to) .

% Definição de cidades: cidadep(X), uma cidade pequena, e cidadeg(X), cidade grande.

cidadep(riobranco).
cidadep(macapa).
cidadep(manaus).
cidadep(belem).
cidadep(portovelho).
cidadep(boavista).
cidadep(palmas).
cidadep(maceio).
cidadeg(salvador).
cidadeg(fortaleza).
cidadep(saoluis).
cidadep(joaopessoa).
cidadeg(recife).
cidadep(teresina).
cidadep(natal).
cidadep(aracaju).
cidadep(goiania).
cidadeg(cuiaba).
cidadeg(campogrande).
cidadeg(brasilia).
cidadep(vitoria).
cidadeg(belohorizonte).
cidadeg(saopaulo).
cidadeg(riodejaneiro).
cidadeg(curitiba).
cidadeg(portoalegre).
cidadeg(florianopolis).

% Definição de capitais: capital(X,Y) indica a relação entre estados e suas capitais, ou seja, Y é a capital de X.

capital(ac,riobranco).
capital(ap,macapa).
capital(am,manaus).
capital(pr,belem).
capital(ro,portovelho).
capital(rr,boavista).
capital(to,palmas).
capital(al,maceio).
capital(ba,salvador).
capital(ce,fortaleza).
capital(ma,saoluis).
capital(pa,joaopessoa).
capital(pe,recife).
capital(pi,teresina).
capital(rn,natal).
capital(se,aracaju).
capital(go,goiania).
capital(mt,cuiaba).
capital(ms,campogrande).
capital(df,brasilia).
capital(es,vitoria).
capital(rs,portoalegre).
capital(sc,florianopolis).
capital(rs,portoalegre).
capital(sp,saopaulo) . 
capital(mg, belohorizonte) .
capital(rj, riodejaneiro) .
capital(pr,curitiba).

%% REGRAS
% a)
% cidade_capital é a pergunta que acha todas as cidades capitais.

cidade_capital :- 
    write('As capitais sao: '),nl, 
    cidadeg(X),write(X),nl;
    cidadep(X),write(X).

% b)
% estado_capital_pequena é a pergunta que acha todos os estados cujas capitais são cidades pequenas.

estado_capital_pequena:- 
    capital(X,Y),
    cidadep(Y),
    write(X),nl.

% c)
% estado_norte_grande é a pergunta que acha todos os estados ao norte cujas capitais são grandes cidades.
estado_norte_grande:- 
    estadon(X),
    capital(X,Y),
    cidadeg(Y),
    write(X),nl.

% d) e e)
% cosmopolitas é ao mesmo tempo a regra que define cidades cosmopolitas como as cidades grandes capitais dos estados do sul,
% e a pergunta que chama todas as cidades cosmopolitas.

cosmopolitas:- 
    capital(Y,X),
    estados(Y),
    cidadeg(X),
    write(X),nl.