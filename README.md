# Prolog_AI
# The AI course lab exercises.
1 Introduction
Prolog is functional declarative language. In TP2, we use Prolog to do some exercises. The first
question is about the genealogical tree. We have four mathematical problems, such as sum and
derivative function. Then, we solved the genealogical search tree and the crossword problem. Use
the recursive method and list, we solved six questions. Last, we studied CLPFD and constraint
programming, we have two questions about that, the second one is more complex than the first
one, but they are related with each other.
2 Genealogical tree(3.7)
We wrote a series of facts, predicates and define some rules of genealogical relationship according
to some conventions.
3 Mathematic Methods(4.3)
We use unification operations to definite above functions.
1)use X is Y, to unify X to the arithmetic value of Y(such as the sum function, unify the sum R
to the arithmetic value of the sum of X,Y(X+Y) )
2)use X > Y, to compare variables and get the result
3)solve the derivative in a recursive way, list all base situations to solve derivative and solve the
general problem in a recursive way
4 Search Tree(4.5.1)
We use abbreviation to represent the variable name, which we shown besides the directed line. We
construct the search tree
5 Crossword problem(4.5.2)
We defined a predicate crossword(V1,V2,V3,H1,H2,H3) that gives the problem solution. Because
of the cross of rows and columns are same words, we defined the equation, such as H12 == V 12.
6 Recursive problem(4.8)
The key point to solve this problem is that we need to construct the recursive formula by list.
7 CLPFD and constraint programming(4.9)
7.3
The problem gives us three persons, three animals and two color. We assume the color number is
also three, one of these we labeled unknown. First, we did this question by labeling all the people,
color and animals. Then we defined snakeowner(X) to add the constraints given by questions and
we use the alldifferent() to describe the variables are totally different.
7.6 
The problem gives us five persons, five animals and five colors, five jobs and five drinks. First,
we did this question by labeling all the people, colors, animals, drinks and jobs. Then we defined
answer(ANS1, ANS2) to add the constraints given by questions and we use problem() to construct
the five people, drinks, animals, colors and jobs.
