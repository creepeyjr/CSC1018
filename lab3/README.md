<h1>CSC 1018 - Logic w/ Prolog</h1>
<h3>Learning Outcomes</h3>
<p>The aims of this practical is:</p>
<ul>
    <li>to become familiar with manipulating lists in Prolog, and </li>
    <li>to become familiar with recursion.</li>
</ul>

<p><strong>1. Develop your own list functions.</strong>
Prolog comes with a set of useful list functions. The goal of this exercise is to
write your own version of standard list functions.</p>
<br>
<p><i>myElem(X,A)
This relation is true is X is an element of list A.
myHead(X,A)
This relation is true if X is the first element of list A.
myLast(X,A)
This relation is true if X is the last element of list A.
myTail(A,B)
This relation is true if list A is the tail of list B.

myAppend(A,B,C)
This relation is true if list C is list B appended to the end of list A.
myReverse(A,B)
This relation is true if list A is the reverse of list B.
myDelete(X,A,B)
This relation is true if list B is list A with the first occurrence of X removed. </i></p>