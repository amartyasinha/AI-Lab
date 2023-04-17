% Base case: merging an empty list with another list produces the other list
merge([], L2, L2).

% Case 1: L1's head is less than or equal to L2's head, so it goes first in L3
merge([H1|T1], [H2|T2], [H1|T3]) :-
    H1 =< H2,
    merge(T1, [H2|T2], T3).

% Case 2: L2's head is less than L1's head, so it goes first in L3
merge([H1|T1], [H2|T2], [H2|T3]) :-
    H1 > H2,
    merge([H1|T1], T2, T3).

% Main predicate to read the inputs and perform the merge
main :-
    write('Enter the first ordered list: '),
    read(L1),
    write('Enter the second ordered list: '),
    read(L2),
    merge(L1, L2, L3),
    write('The merged list is: '),
    write(L3).
