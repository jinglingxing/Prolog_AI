%sum of two numbers

sum(X,Y,R):- R is X+Y, write(R).


% maximum between two numbers
max2(X,Y,M):-
    (X=Y ->
    write('both are equal');
     X>Y ->
    (M is X, write(M));
    (M is Y, write(M))).

% maximum between three numbers
max3(X,Y,Z,M):-
    (
     X>Y,Y>Z ->
     (M is X, write(M));
     Y>Z ->
    (M is Y, write(M));
    (M is Z, write(M))).

%Product of two numbers
product(X,Y,R):- R is X*Y, write(R).

%compute the derivative
d(X,X,1):- !.
d(C,X,0):- atomic(C).  %C/=X to test if C is constant.
d(U+V,X,A+B):- d(U,X,A), d(V,X,B). % du/dx and dv/dx
d(U*V,X,U*B+V*A):- d(U,X,A),d(V,X,B). %A=du/dx, B=dv/dx
d(U^N,X,R):- atomic(N),N\=X, d(U,X,A),R=N*A*U^(N-1).








