membership(_, []) :-
    false.
membership(Element, [Element|_]) :-
    true.
membership(Element, [_|Tail]) :-
    membership(Element, Tail).


% Implementation

% ?- membership(2, [1, 2, 3, 4]).
% true.

% ?- membership(5, [1, 2, 3, 4]).
% false.

% ?- membership(a, [a, b, c, d]).
% true.

% ?- membership(e, [a, b, c, d]).
% false.
