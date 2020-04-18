%% BANCO DE DADOS
% move(State1, Move, State2): Move in State1 results in State2
% state(HorizPosition,VertPosition, BoxPosition, HasBanana):
% configures the current state of the problem
move(state(middle,onbox,middle,hasnot),
grasp,
state(middle,onbox,middle,has)).

move(state(P,onfloor,P,H),
climb,
state(P,onbox,P,H)).

move(state(P1,onfloor,P1,H),
push(P1,P2),
state(P2,onfloor,P2,H)).

move(state(P1,onfloor,B,H),
walk(P1,P2),
state(P2,onfloor,B,H)).

% canget( State ): indicates how the monkey can get the banana
canget(state(_,_,_,has)).

canget(State1):-
write('From: '), write(State1), nl,
move(State1,Move,State2), write('Action: '), write(Move), nl
canget(State2), write('To: '), write(State2), !.
