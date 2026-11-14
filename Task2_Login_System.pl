% Dataset
user(yara, 1234).
user(ahmed, 5678).
user(sara, 9999).

% Start Login
login :-
login_attempts(3).

% Maximum attempts exceeded
login_attempts(0) :-
write('Sorry, you exceeded the maximum number of attempts, try again later.').

% Check username and password
login_attempts(N) :-
N > 0,
write('Enter username: '),
read(Username),
write('Enter password: '),
read(Password),

( user(Username, Password) ->
    write('Login Successful')
;
    write('Login Unsuccessful'),
    nl,
    N1 is N - 1,
    login_attempts(N1)
).
