shift(_, [], []).
shift(X, [X|T], T).
shift(X, [H|T], [H|Tx]) :-shift(X, T, Tx),!.

subset(_, []).
subset(L, [H|SL]) :-
  member(H, L),
  shift(H, L, L1),
  subset(L1, SL).

check_sum([], 0).
check_sum([H|T], Total) :-check_sum(T, Sum),Total is H + Sum.

subSum(L, N, SL) :-subset(L, SL),check_sum(SL, X),X == N,!.
