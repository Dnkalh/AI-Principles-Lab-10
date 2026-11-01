% Danah Alhugail
% Lab 10 - Task 2

% User 
user(danah,1234).
user(sara,7654).

% Login
login :-
    check_login(3).

% Check username and password
check_login(Attempts) :-
    write('Enter username: '), read(User),
    write('Enter password: '), read(Password),
    ( user(User,Password) ->
        write('Login Successful'), nl
    ;
        write('Login Unsuccessful'), nl,
        Remaining is Attempts-1,
        ( Remaining > 0 ->
            check_login(Remaining)
        ;
            write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl
        )
    ).
