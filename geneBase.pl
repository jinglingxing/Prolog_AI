man("Hugo").
woman("Catherine").
man("Loic").
woman("Justine").
woman("Lea").
man("Gabriel").
woman("Alice").
man("Maxime").
man("Mathieu").
man("Alexis").
woman("Rose").
woman("Emma").

parent("Hugo","Catherine","Lea").
parent("Hugo","Catherine","Gabriel").
parent("Loic","Justine","Alice").
parent("Loic","Justine","Maxime").
parent("Loic","Justine","Mathieu").
parent("Gabriel","Alice","Alexis").
parent("Gabriel","Alice","Rose").
parent("Gabriel","Alice","Emma").

child(X,Y) :- parent(Y,Z,X);parent(Z,Y,X).
daughter(X,Y) :- child(X,Y),woman(X).
son(X,Y) :- child(X,Y),man(X).
mother(X,Y) :- child(Y,X),woman(X).
father(X,Y) :- child(Y,X),man(X).
uncle(X,Y) :- child(Y,Z),child(Z,P),child(X,P),man(X).
aunt(X,Y) :- child(Y,Z),child(Z,P),child(X,P),woman(X).
grand_parent(X,Y) :- child(Y,Z),child(Z,X).
grand_father(X,Y) :- grand_parent(X,Y),man(X).
grand_mother(X,Y) :- grand_parent(X,Y),woman(X).
grand_child(X,Y) :- grand_parent(Y,X).
grand_daughter(X,Y) :- grand_child(X,Y),woman(X).
grand_son(X,Y) :- grand_child(X,Y),man(X).
nephew(X,Y) :- (uncle(Y,X);aunt(Y,X)),man(X).
niece(X,Y) :- (uncle(Y,X);aunt(Y,X)),woman(X).
brother(X,Y) :- child(X,Z),child(Y,Z),man(X).
sister(X,Y) :- child(X,Z),child(Y,Z),woman(X).
