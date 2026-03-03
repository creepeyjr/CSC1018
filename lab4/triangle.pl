/*
BRIEF
-----
Area of a triangle
Define an infix binary operator, tA, that is true if the right operand is the area of a
triangle defined by the left operand.
A triangle A/B has a base of A and a perpendicular height of B. 

For example, the clause 6/4 tA X is true if the value X is 12.   

PLAN
----
- Figure out and define an infix binary operator.
    - Preceence 200 (relatively low priority)
    - xfx (non-associative, no chaining)
    - Operator name tA
- So with the example 6/4, if 6 (base) and 4 (perpendicular) have an area = to X (12)
- Then it is true.

EXPLANATION : xfx
- Cannot chain expressions. E.g. a tA b tA c, 
    - x means the argument must have lower precedence than the operator
    - y means the argument can have equal or lower precedence
    - f is the position of the operator itself

*/

/* Operator Facts */
:- op(200, xfx, tA).

/* 
Calculation
-----------
A : Base
B : Height
Output of calcuation : Area
*/

A/B tA Area :-
    Area is (A * B) / 2.

/* 
Test Prompts
------------
?- 6/4 tA X.
X = 12.

?- 99/7 tA X.
X = 346.5.

*/