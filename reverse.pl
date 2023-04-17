reverse([], []) :-
    !.
reverse([H|T], R) :-
    reverse(T, TR),
    append(TR, [H], R).

reverse(L, R) :-
    write('Enter the list: '),
    read(L),
    reverse(L, R),
    write('The reversed list of '), write(L), write(' is '), write(R).