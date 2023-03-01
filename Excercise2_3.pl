remove_duplicates([], []).
remove_duplicates([Head|Tail], Result) :-
    member(Head, Tail),
    remove_duplicates(Tail, Result).
remove_duplicates([Head|Tail], [Head|Result]) :-
    \+ member(Head, Tail),
    remove_duplicates(Tail, Result).


% implementation

% ?- remove_duplicates([1, 2, 2, 3, 4, 4, 4], Result).
% Result = [1, 2, 3, 4].

% ?- remove_duplicates([], Result).
% Result = [].

% ?- remove_duplicates([a, b, c, a, b, d], Result).
% Result = [c, a, b, d].
