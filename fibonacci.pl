generate_fib(N, T) :-
    write('Enter a number: '),
    read(N),
    (
        N =:= 0 -> 
            T = 0;
        N =:= 1 -> 
            T = 1;
        N > 1 -> 
            N1 is N - 1, N2 is N - 2, 
            generate_fib(N1, T1), generate_fib(N2, T2), 
            T is T1 + T2
    ),
    write('The '), write(N), write('th term of the Fibonacci series is: '), write(T).
