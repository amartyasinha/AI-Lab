sumlist([], 0).
sumlist([X|Xs], S) :-
  write('Enter the next element of the list: '),
  read(X),
  sumlist(Xs, S1),
  S is X + S1.
