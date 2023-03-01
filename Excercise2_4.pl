reverse_list([], []).
reverse_list([Head|Tail], Reversed) :-
    reverse_list(Tail, ReversedTail),
    append(ReversedTail, [Head], Reversed)

    % Implementation

%     ?- reverse_list([1, 2, 3, 4], Reversed).
% Reversed = [4, 3, 2, 1].

% ?- reverse_list([], Reversed).
% Reversed = [].

% ?- reverse_list([a, b, c], Reversed).
% Reversed = [c, b, a].
