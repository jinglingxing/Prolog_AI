sum(X,Y,R):- R is X+Y, write(R).



max2(X,Y,M):-
    (X=Y ->
    write('both are equal');
     X>Y ->
    (M is X, write(M));
    (M is Y, write(M))).

max3(X,Y,Z,M):-
    (
     X>Y,Y>Z ->
     (M is X, write(M));
     Y>Z ->
    (M is Y, write(M));
    (M is Z, write(M))).



