% Danah Alhugail
% Lab 10 - Task 1

% Square
square(S,Area,Perimeter) :-
    Area is S*S,
    Perimeter is 4*S.

% Rectangle
rectangle(W,H,Area,Perimeter) :-
    Area is W*H,
    Perimeter is 2*(W+H).

% Triangle
triangle(Base,H,A,B,C,Area,Perimeter) :-
    Area is Base*H/2,
    Perimeter is A+B+C.
