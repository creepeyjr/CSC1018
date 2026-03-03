/*
BRIEF
-----
1. Classifying Numbers
Write a Prolog relation class(X,Y) that classifies a number X into a category Y,
where Y is either negative, zero or positive. Use cuts to make it more efficient. 

Cut (!) Notes
-------------
A goal that always succeeds with a side effect.
- Commits to any choice made since the parent goal was invoked.

*/

/* Outline FACTS */
classify(X, negative) :- X < 0, !.
classify(X, zero) :- X =:= 0, !.
classify(X, positive) :- X > 0, !.
