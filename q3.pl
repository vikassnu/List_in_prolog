node(a).
node(b).
node(c).
node(d).
node(e).


:-dynamic edge/3.
:-dynamic node/1.

edge(a, b, 4).
edge(b, c, 3).
edge(b,d,46).
edge(c,d,8).
edge(d,a,7).





path(X, Y, N, Path) :-
  path(X, Y, N, [], Path).

path(X, Y, N, Seen, [X]) :-
  \+ memberchk(X, Seen), edge(X, Y, N).

path(X, Z, N, Seen, [X|T]) :-
  \+ memberchk(X, Seen),
  edge(X, Y, N0),
  path(Y, Z, N1, [X|Seen], T),
  \+ memberchk(X, T),
  N is N0 + N1.

shortestPath(X, Y, Cost, Path) :-
  path(X, Y, Cost, Path),
  \+ (path(X, Y, LCost, XPath), XPath \= Path, LCost =< Cost),
  !. 
