:- use_module(library(clpfd)).

people(1).
people(2).
people(3).
getPeople(P, ID):- (ID#=1, P=british);(ID#=2, P=spanish); (ID#=3, P=japanese).
animal(1).
animal(2).
animal(3).
getAnimal(A, ID):- (ID#=1, A=jaguar);(ID#=2, A=snail);(ID#=3, A=snake).
pos(1).
pos(2).
pos(3).
color(1).
color(2).
color(3).
getColor(C, ID):- (ID#=1, C=red); (ID#=2, C=blue); (ID#=3, C=unknowncolor).

house(C, Pos) :- color(C), pos(Pos).
owns(P, A, C, Pos) :- people(P), animal(A), house(C, Pos).

snakeowner(X) :-
        owns(P1, A1, C1, Pos1), P1 in 1, C1 in 1, % member(P1, [british]), member(C1, [red]),
        owns(P2, A2, C2, Pos2), P2 in 2, A2 in 1, % member(P2, [spanish]), member(A2, [jaguar]),
        owns(P3, A3, C3, Pos3), P3 in 3, % member(P3, [japanese]),

        owns(P4, A4, C4, Pos4), A4 in 2, Pos3 #= Pos4+1, % member(A4, [snail]), Pos3 #= Pos4+1,
        owns(P5, A5, C5, Pos5), P4 #= Pos5-1, C5 in 2, % member(C5, [blue]),
        all_different([P1, P2, P3]),
        all_different([A1, A2, A3]),
        all_different([C1, C2, C3]),
        all_different([Pos1, Pos2, Pos3]),

        L = [[P1, A1, C1, Pos1], [P2, A2, C2, Pos2],
             [P3, A3, C3, Pos3]],
        tuples_in([[P4, A4, C4, Pos4]], L),
        tuples_in([[P5, A5, C5, Pos5]], L),

        owns(P6, A6, C6, Pos6), A6 in 3, % member(A6, [snake]),
        tuples_in([[P6, A6, C6, Pos6]], L),
        getPeople(X, P6).

