block(a).
block(b).
block(c).
block(d).
block(e).
at(a,2,2).
at(b,2,5).
at(c,2,5).
at(e,5,2).
at(d,5,5).
on(a,b).
on(b,c).
above(c,table).
above(e,table).
above(d,table).
z(a,2).
z(b,1).
z(c,0).
z(d,0).
z(e,0).

b1(X,Y,Z1):- block(X),on(X,Y),z(X,Z1),Z1\=0,Z1\=table.
b2(X):-block(X),above(X,table).  
b3(R):-findall(X,block(X),R).

b4(R):-findall(X,b1(X,Y,Z),R). 


 % no of blocks--part_2
b5(Len):-findall(X,block(X),R),list_length(R,Len). 

 %  no of blocks  on top of another block--part_3
b6(Len):-findall(X,b1(X,Y,Z),R),list_length(R,Len).

list_length([],0).
list_length([_|TAIL],N) :- list_length(TAIL,N1), N is N1 + 1.