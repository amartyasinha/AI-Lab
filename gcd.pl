gcd(X, Y, G) :-
    write('Enter the first number: '),
    read(X),
    write('Enter the second number: '),
    read(Y),
    (
        X =:= Y ->
            G = X;
        X > Y ->
            gcd(X-Y, Y, G);
        X < Y ->
            gcd(X, Y-X, G)
    ),
    write('The GCD of '), write(X), write(' and '), write(Y), write(' is '), write(G).
