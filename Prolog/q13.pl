go:-	
	write('Enter List :'),nl,
	createList(L),
    write(L),nl,nl,
    pal(L),
    write('List is Palindrome');
    write('List is not Palindrome').     

    rev(L, R):-my_rev(L,[],R).

    my_rev([], A, A):-!.
    my_rev([H|T], A, R):-   my_rev(T, [H|A], R).

    pal(L):- rev(L, L).

    enterEl(X) :-   write('Enter Element :'),
                    read(X).

    createList(L) :-enterEl(X), 
                    createList(X, L).
    
    createList(-1, []) :-   !.

    createList(X, [X|T]) :- enterEl(X1),
                            createList(X1, T).


:-initialization(go).