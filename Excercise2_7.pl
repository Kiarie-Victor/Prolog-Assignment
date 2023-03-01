replace([], _, _, []).
replace([Head|Tail], X, Y, [Y|Result]) :-
    Head = X,
    replace(Tail, X, Y, Result).
replace([Head|Tail], X, Y, [Head|Result]) :-
    Head \= X,
    replace(Tail, X, Y, Result).


% Implementation

% ?- replace([1, 2, 3, 2, 4], 2, a, Result).
% Result = [1, a, 3, a, 4].

% ?- replace([], a, b, Result).
% Result = [].

% ?- replace([a, a, a, a], a, b, Result).
% Result = [b, b, b, b].
