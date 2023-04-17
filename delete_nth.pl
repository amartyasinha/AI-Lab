% Remove an item from the Nth position of a list to generate a new list
delete_nth(N, L, R) :-
    (   N =< 0 -> R = L
    ;   N >= length(L) -> R = L
    ;   length(Front, N),
        append(Front, [_|Back], L),
        append(Front, Back, R)
    ).

% Main predicate to read the inputs and perform the deletion
main :-
    write('Enter the position to delete: '),
    read(N),
    write('Enter a list: '),
    read(L),
    delete_nth(N, L, R),
    write('The list '), write(L), write(' with the item at position '), write(N), write(' removed is: '), write(R).
