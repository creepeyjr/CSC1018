/* FACTS */

/* 	Child | Parent | Parent */
parents(david, george, noreen).
parents(jennifer, george, noreen).
parents(georgejr, george, noreen).
parents(scott, george, noreen).
parents(joanne, george, noreen).

/*
Children of first parents, are parents themselves of the following kids. 
*/
/*    Child | Now Parent | Parent */
parents(jessica, david, edel).
parents(clara, david, edel).
parents(michael, david, edel).
parents(laura, georgejr, susan).
parents(anna, scott, siobhan).


/* Relationships */

father(X, Y) :- parents(Y, X, _). /* X is father of Y if Y's parents have X as father*/
male(X) :- father(X, _).  /* X is male if X is a father to someone. */

mother(X, Y) :- parents(Y, _, X). /* X is mother of Y if Y's parents have X as mother */
female(X) :- mother(X, _).  /* X is female if X is a mother to someone.*/

grandfather(X, Y) :- father(X, Z), father(Z, Y).  /* X is Y's paternal grandfather */
grandfather(X, Y) :- father(X, Z), mother(Z, Y).  /* X is Y's maternal grandfather */

grandmother(X, Y) :- mother(X, Z), mother(Z, Y).
grandmother(X, Y) :- mother(X, Z), father(Z, Y).

/* X is Y's brother if X is male and they share the same father Z*/
brother(X, Y) :- male(X), father(Z, X), father(Z, Y).

/* X is Y's sister if X is female and they share the saem father Z.*/
sister(X, Y) :- female(X), father(Z, X), father(Z, Y).

/* PART TWO OF LAB

Find Uncle.
Example query, Who are Laura's uncles?*/
uncle(X, Y) :- 
    parents(Y, Father, _),
    brother(X, Father).

uncle(X, Y) :-
    parents(Y, _, Mother),
    brother(X, Mother).

/* Find Aunt. */
aunt(X, Y) :-
    parents(Y, Father, _),
    sister(X, Father).

aunt(X, Y) :-
    parents(Y, _, Mother),
    sister(X, Mother).

/* 
Find Cousin. 
For them to be cousins, need to :
1. Find a parent of X
2. Find a parent of Y
3. Check if PX and PY are siblings (brother or sister)
*/
/*
Writing siblings rule
Same father
*/
siblings(X, Y) :-
    parents(X, Father, _),
    parents(Y, Father, _).
/*Same mother*/

siblings(X, Y) :-
    parents(X, _, Mother),
    parents(Y, _, Mother).

cousin(X, Y) :-
    parents(X, PX, _), % Find dad of X
    parents(Y, PY, _), % Find dad of Y
    siblings(PX, PY).
    

/*
KEY POINTS TO NOTE:

1. _ are anonymous variables, match anything but don't cafe about their value.
2. , means AND
3. ; means OR

EXAMPLE QUERIES
- father(george, david) (IS GEORGE THE FATHER OF DAVID?)
- grandfather(george, laura) (IS GEORGE THE GRANDFATHER OF LAURA?)
- brother(david, scott) (IS DAVID THE BROTHER OF SCOTT)
*/
