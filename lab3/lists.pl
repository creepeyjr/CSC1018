/* FACTS */
/*
PLANNED APPROACH
----------------
- Breakdown and analyise each function laid out in file.
    - Understand what each individual variable is doing.

*/

/*
Base case 
- Stops recursion.
- First element X, is the head.
- Tail can be anything else.
- "X is an element of the list if X matches the head of the list."
*/
myElem(X,[X|_]).
/*
Recursive Rule
- What to do when the Tail does not match.
- [ _ | Tail ] Tail is bound the variable "Tail".
- "X is an element of the list IF something is true about the tail."
*/
myElem(X,[ _ | Tail]) :- 
    myElem(X, Tail).


myHead(X,[X|_]).


myLast(X,[X]).

myLast(X,[_|LS]) :- myLast(X,LS).


myTail(X,[_|X]).


myAppend([],Y,Y).

myAppend([X|XS],Y,[X|Z]) :- myAppend(XS,Y,Z).


myReverse([],[]).

myReverse([X|XS],Y) :- myReverse(XS,R), myAppend(R,[X],Y).


myDelete(X,[X|L1],L1).

myDelete(X,[Y|L1],[Y|L2]) :- myDelete(X,L1,L2).