factorial(N, F) :-
    write('Enter a number: '),
    read(N),
    (
        N =:= 0 -> 
            F = 1;
        N > 0 -> 
            F is N * (N-1)!, 
            write('The factorial of '), write(N), write(' is '), write(F)
    ).
