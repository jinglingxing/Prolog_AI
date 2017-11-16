:- use_module(library(clpfd)).


people(1). % British
people(2). % Spanish
people(3). % Ukrainian
people(4). % Japanese
people(5). % Noregian
getPeople(X, ID) :- (ID#=1, X=british);(ID#=2, X=spanish);(ID#=3, X=ukrainian);(ID#=4, X=japanese);(ID#=5, X=noregian).

animal(1). % dog
animal(2). % snail
animal(3). % fox
animal(4). % Zebra
animal(5). % horse

drink(1). % coffee
drink(2). % tea
drink(3). % milk
drink(4). % orange juice
drink(5). % water

job(1). % sculptor
job(2). % diplomat
job(3). % doctor
job(4). % violinist
job(5). % Acrobat

color(1). % red
color(2). % green
color(3). % white
color(4). % yellow
color(5). % blue

pos(1).
pos(2).
pos(3).
pos(4).
pos(5).

problem([[P1,P2,P3,P4,P5],
		[A1,A2,A3,A4,A5],
		[D1,D2,D3,D4,D5],
		[J1,J2,J3,J4,J5],
		[C1,C2,C3,C4,C5],
		[T1,T2,T3,T4,T5]]).

answer(ANS1, ANS2) :-
	problem(X),
	length(X, 6), 
	append(X, Vs), Vs ins 1..5,
	maplist(all_distinct, X),
	X = [Ps, As, Ds, Js, Cs, Ts],
	Ps = [P1, P2, P3, P4, P5],
	As = [A1, A2, A3, A4, A5],
	Ds = [D1, D2, D3, D4, D5],
	Js = [J1, J2, J3, J4, J5],
	Cs = [C1, C2, C3, C4, C5],
	Ts = [T1, T2, T3, T4, T5],
	P1 = 1, C1 = 1, 
	P2 = 2, A2 = 1,
	P3 = 3, D3 = 2,
	P4 = 4, J4 = 5,
	P5 = 5, T5 = 1,

	nth0(I1, [C1,C2,C3,C4,C5], 3),
	nth0(I1, [T1,T2,T3,T4,T5], E1),

	nth0(I2, [D1,D2,D3,D4,D5], 1),
	nth0(I2, [C1,C2,C3,C4,C5], 2),
	nth0(I2, [T1,T2,T3,T4,T5], E2),
	E2 #= E1+1,

	nth0(I3, [A1,A2,A3,A4,A5], 2),
	nth0(I3, [J1,J2,J3,J4,J5], 1),

	nth0(I4, [J1,J2,J3,J4,J5], 2),
	nth0(I4, [C1,C2,C3,C4,C5], 4),
	nth0(I4, [T1,T2,T3,T4,T5], E5),

	nth0(I5, [D1,D2,D3,D4,D5], 3),
	nth0(I5, [T1,T2,T3,T4,T5], 3),

	nth0(I6, [A1,A2,A3,A4,A5], 3),
	nth0(I6, [T1,T2,T3,T4,T5], E3),

	nth0(I7, [J1,J2,J3,J4,J5], 3),
	nth0(I7, [T1,T2,T3,T4,T5], E4),
	(E4 #= E3+1; E4 #= E3-1),

	nth0(I8, [A1,A2,A3,A4,A5], 5),
	nth0(I8, [T1,T2,T3,T4,T5], E6),
	(E6 #= E5+1; E6 #= E5-1),

	nth0(I9, [J1,J2,J3,J4,J5], 4),
	nth0(I9, [D1,D2,D3,D4,D5], 4),

	nth0(I10, [C1,C2,C3,C4,C5], 5),
	nth0(I10, [T1,T2,T3,T4,T5], 2),

	nth0(I11, [D1,D2,D3,D4,D5], 5),
	nth0(I11, [P1,P2,P3,P4,P5], ANS1_P),

	nth0(I12, [A1,A2,A3,A4,A5], 4),
	nth0(I12, [P1,P2,P3,P4,P5], ANS2_P),

	getPeople(ANS1, ANS1_P),	% who drinks water
	getPeople(ANS2, ANS2_P).	% who owns a Zebra

