subset([],[]).
subset([A|B],[A|C]):- subset(B,C).
subset([_|A],B):-subset(A,B).
sublist(A,B):-subset(B,A).
