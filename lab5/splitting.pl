/*
Brief
-----

- Write a prolog relation split (Numbers, Positive, Negative),
that is true IF
    - all the pos numbers (including 0) in the list N are in the list Positive
    - all neg numbers in list N are in the list Negative.

- Write a version with and without cuts.
- Evaluate the effect of cuts.

PLANNED APPROACH
----------------
- List N is the first list, full of numbers (duh).
- Assume Pos and Neg list have a load of numbers too.
*/

/* Implementation without cuts */
split([],[],[]).

split([X|XS], [X|PS], N) :- X >= 0, !, split(XS,PS,N).

split([X|XS], P, [X|NS]) :- !, split(XS,P,NS).

