/* 
UNDERSTANDING THE BRIEF :
-------------------------
Write a set of FACTS that represents a grid.
- 5x4
- 2 Dimensional
- Each point represented with a letter starting from a.

Write a set of RULES that tests which direction a point is due.
- Starting north.
- Going counter-clockwise.

POTENTIAL SOLUTION
------------------
- Create a structure.
- functor will be named grid.
- Each component will be a point on the grid.

POTENTIAL SOLUTION
------------------
- Write out the points of the gird as individual facts.
*/

/* FACTS */
/*
grid(
    a(1,1), b(2,1), c(3,1), d(4,1), e(5,1),
    f(1,2), g(2,2), h(3,2), i(4,2), j(5,2),
    k(1,3), l(2,3), m(3,3), n(4,3), o(5,3),
    p(1,4), q(2,4), r(3,4), s(4,4), t(5,4)
).
*/

point(a, 1, 1).
point(b, 2, 1).
point(c, 3, 1).
point(d, 4, 1).
point(e, 5, 1).

point(f, 1, 2).
point(g, 2, 2).
point(h, 3, 2).
point(i, 4, 2).
point(j, 5, 2).

point(k, 1, 3).
point(l, 2, 3).
point(m, 3, 3).
point(n, 4, 3).
point(o, 5, 3).

point(p, 1, 4).
point(q, 2, 4).
point(r, 3, 4).
point(s, 4, 4).
point(t, 5, 4).


/*
Potential approaches :
- Use recursive algorithm to check through each and every point and assess direction.
- Individual rule for each point on the gird.

- Individual rule for each direction on the gird.
    - Grab each coordinate for both points.
    - Compare their corrds to eachother.
    - Finding the direction.

RULES
*/

/* Is point B NORTH of A, or above A? */
north(A,B) :-
    /* Grab the individual coords for each point. */
    point(A, AX, AY),
    point(B, BX, BY),
    /* Same coloumn? */
    AX =:= BX,
    /* A is actually above B, if A's Y value is greater than B's. */
    AY > BY.
    /* If all of this is true, then the direction is NORTH bound. */

northWest(A,B) :-
    point(A, AX, AY),
    point(B, BX, BY),
    /* Is A to the left of B? */
    AX > BX,
    /* Is A above B? */
    AY > BY.
    /* If both are true, A is diagonally aligned and NORTH-WEST with B */

west(A,B) :-
    point(A, AX, AY),
    point(B, BX, BY),
    /* Is A to the left of B? */
    AX > BX,
    /* Is A on the same row as B? */
    AY =:= BY.
    /* If both are true, A is WEST of B */

southWest(A,B) :-
    point(A, AX, AY),
    point(B, BX, BY),
    /* Is A to the left of B? */
    AX > BX,
    /* Is A below B? */
    AY < BY.

south(A,B) :-
    point(A, AX, AY),
    point(B, BX, BY),
    /* Is A same coloumn as B? */
    AX =:= BX,
    /* Is A below B? */
    AY < BY.

southEast(A,B) :-
    point(A, AX, AY),
    point(B, BX, BY),
    /* Is A to the right of B? */
    AX < BX,
    /* Is A below B? */
    AY < BY.

east(A,B) :-
    point(A, AX, AY),
    point(B, BX, BY),
    /* Is A to the right of B? */
    AX < BX,
    /* Is A on the same row as B? */
    AY =:= BY.

northEast(A,B) :-
    point(A, AX, AY),
    point(B, BX, BY),
    /* Is A to the right of B? */
    AX < BX,
    /* Is A above B? */
    AY > BY.
