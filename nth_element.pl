% Read a list from the user
read_list(L) :-
    write('Enter a list: '),
    read(L).

% Read a number from the user
read_number(N) :-
    write('Enter a number: '),
    read(N).

% Find the Nth element of a list
nth_element(N, L, X) :-
    nth0(N, L, X).

% Main predicate to read the list and N, and find the Nth element
main :-
    read_list(L),
    read_number(N),
    nth_element(N, L, X),
    write('The '), write(N), write('th element of '), write(L), write(' is '), write(X).
