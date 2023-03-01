power([], [[]]).
power([Head|Tail], PowerSet) :-
    power(Tail, PowerSetTail),
    append(PowerSetTail, NewSets),
    maplist(append([Head]), NewSets, MoreSets),
    append(PowerSetTail, MoreSets, PowerSet).

% Implementation

% ?- power([1, 2, 3], PowerSet).
% PowerSet = [[], [3], [2], [2, 3], [1], [1, 3], [1, 2], [1, 2, 3]].

% ?- power([], PowerSet).
% PowerSet = [[]].
