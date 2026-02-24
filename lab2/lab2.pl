/* Facts */
/*
MyLibrary = [book(illiad,homer,study,500),book(c,richie,study, 150),
	    book(ntbible,sams,reference,480),book(ntfordummies,bob, reference,200),
            book(montypython,comedy,300), book(pythonalgorithms,david,study, 225),
            book(masacre,dillenger,crime,180), book(lilacbus,binchey,fiction,200)].
*/

holiday(_,[]).

holiday(book(HT, HA, _, _),[book(Title,Author,Genre,Size)|_]) :- HT = Title,HA = Author, Size < 400, Genre \== drama, Genre \== reference.

holiday(B,[book(_,_,_,_)|XS]) :- holiday(B,XS).


revision(_,[]).

revision(book(RT, RA, _, _),[book(Title,Author,Genre,Size)|_]) :- RT = Title,RA = Author, Size > 300, Genre == study.

revision(book(RT, RA, _, _),[book(Title,Author,Genre,Size)|_]) :- RT = Title,RA = Author, Size > 300, Genre == reference.

revision(B,[book(_,_,_,_)|XS]) :- revision(B,XS).


literary(_,[]).

literary(book(LT,LA,_,_),[book(Title,Author,Genre,_)|_]) :- LT = Title,LA = Author, Genre == drama.

literary(B,[book(_,_,_,_)|XS]) :- literary(B,XS).


leisure(_,[]).

leisure(book(LT,LA,_,_),[book(Title,Author,Genre,_)|_]) :- LT = Title,LA = Author, Genre == comedy.

leisure(book(LT,LA,_,_),[book(Title,Author,Genre,_)|_]) :-  LT = Title,LA = Author, Genre == fiction.

leisure(B,[book(_,_,_,_)|XS]) :- leisure(B,XS).

