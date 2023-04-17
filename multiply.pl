multi(N1, N2, R) :-
    write('Enter the first number: '),
    read(N1),
    write('Enter the second number: '),
    read(N2),
    R is N1 * N2,
    write('The result of multiplying '), write(N1), write(' and '), write(N2), write(' is '), write(R).