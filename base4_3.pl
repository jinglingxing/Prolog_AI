sum(X,Y,R) :-  R is X+Y.
max2(X,Y,M) :-  M is X,X>Y;M is Y.
max2(X,Y,Z,M) :- M is X,X>Y,X>Z;M is Y,Y>X,Y>Z;M is Z.
d(X,X,1).
d(C,X,0) :- atomic(C).
d(U+V,X,A+B) :- d(U,X,A),d(V,X,B).
d(U*V,X,U*B+V*A) :- d(U,X,A),d(V,X,B).
d(U^N,X,R) :- atomic(N),N\=X,d(U,X,A),R=N*A*U^(N-1).
d(sin(W),X,Z*cos(W)) :- d(W,X,Z).
d(exp(W),X,Z*exp(W)) :- d(W,X,Z).
d(log(W),X,Z/W) :- d(W,X,Z).
d(cos(W),X,-(Z*sin(W))) :- d(W,X,Z).
d(tan(W),X,(Z*sec(W)^2)) :- d(W,X,Z).

