 split(L, N, L1, L2) :-
  length(L1, N),
  append(L1, L2, L).
split(L, N, L1, L2) :-
  length(L, N1),
  N >= N1,
  L1 == L,
  L2 == [].
len(L, N) :-
  length(L, Length),
  Length == N.
