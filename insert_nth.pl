% Read a number from the user
read_number(N) :-
    write('Enter a number: '),
    read(N).

% Read a list from the user
read_list(L) :-
    write('Enter a list: '),
    read(L).

% Insert an item into the Nth position of a list to generate a new list
insert_nth(I, N, L, R) :-
    length(L, Len),
    (   N =< 0 -> R = [I | L]
    ;   N >= Len -> R = L ++ [I]
    ;   length(Front, N),
        append(Front, [X|Back], L),
        append(Front, [I, X|Back], R)
    ).

% Main predicate to read the inputs and perform the insertion
main :-
    read_number(I),
    read_number(N),
    read_list(L),
    insert_nth(I, N, L, R),
    write('The list '), write(L), write(' with '), write(I), write(' inserted at position '), write(N), write(' is: '), write(R).
