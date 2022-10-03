  node(a).
node(b).
node(c).
node(d).
node(e).
node(f).

edge(a, b).
edge(b, c).
edge(c, f).
edge(c, e).
edge(d, c).
edge(e, d).
edge(e, b).
edge(f, e).
edge(f, a).

walk(N1, N2, Visited) :-
  edge(N1, X),
  not(member(X, Visited)),
  (N2 = X; walk(X, N2, [N1|Visited])).

travel(A, B, P, [B|P]) :-
  edge(A,B).
travel(A, B, Visited, Path) :-
  edge(A,C),
  C \== B,
  not(member(C, Visited)),
  travel(C, B, [C|Visited], Path).

path(N1, N2, P) :- travel(N1,N2,[N1],Q), reverse(Q, P).

hasPath(N1, N1).
hasPath(N1, N2) :-
  walk(N1,N2,[]),
  !.
