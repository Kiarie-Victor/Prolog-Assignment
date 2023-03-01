analyse_list([]) :-
    write('The list is empty.').
analyse_list([Head|Tail]) :-
    write('The head of the list is: '), write(Head), nl,
    write('The tail of the list is: '), write(Tail).
analyse_list(_) :-
    fail.

% implementation

% ?- analyse_list([1, 2, 3, 4]).
% The head of the list is: 1
% The tail of the list is: [2,3,4]
% true.

% ?- analyse_list([]).
% The list is empty.
% true.

% ?- analyse_list(foo).
% false.