male(ram).          % means ram is a male
male(rahim).
male(shyam).
male(ravi).
male(raj).
female(gita).       % means gita is a female
female(anita).
female(smita).
female(sita).
female(sudha).
parent(ram,rahim).  % means ram is a parent of rahim
parent(gita,rahim).
parent(shyam,raj).
parent(anita,raj).
parent(anita,smita).
parent(ravi,smita).
parent(sita,gita).
parent(sita,anita).
parent(smita,sudha).
parent(ravi,sudha).
/*Rules*/ 
father(X,Y):- parent(X,Y),male(X).
mother(X,Y):- parent(X,Y),female(X).
sibling(X,Y):- father(Z,X),father(Z,Y),mother(W,X),mother(W,Y),X\=Y.
stepsibling(X,Y):- father(Z,X),father(Z,Y),mother(W,X), mother(V,Y),W\=V, X\=Y.
stepsibling(X,Y):- mother(Z,X),mother(Z,Y),father(W,X),father(V,Y),W\=V,X\=Y.
brother(X,Y):- sibling(X,Y),male(X).
sister(X,Y):- sibling(X,Y),female(X).
stepbrother(X,Y):- stepsibling(X,Y),male(X).
stepsister(X,Y):- stepsibling(X,Y),female(X).
ancestor(X,Y):- parent(X,Y).
ancestor(X,Y):- parent(Z,Y),ancestor(X,Z).

/*Problem 1*/
grandparent(X,Z):-parent(X,Y),parent(Y,Z).
grandfather(X,Y):-grandparent(X,Y),male(X).
grandmother(X,Y):-grandparent(X,Y),female(X).

/*Problem 2*/
childof(Y,X):-parent(X,Y).
grandchildof(X,Z):-childof(X,Y),child(Y,Z).
greatgrandchildof(X,Z):-grandchildof(X,Y),childof(Y,Z).
/*succ(X,Z):-ancestor(Z,X).*/
succ(X,Y):-childof(X,Y).
succ(X,Z):-childof(X,Y),succ(Y,Z).

/*question_1*/
uncle(X,Y):-parent(Z,X),brother(Y,Z). % x is a uncle of y
aunt(X,Y):-sister(Y,Z),parent(Z,X).
cousin(X,Y):-mother(A,X),father(B,X),mother(C,Y),father(D,Y),sister(A,C),X\=Y.
cousin(X,Y):-mother(A,X),father(B,X),mother(C,Y),father(D,Y),sister(A,D),X\=Y.
cousin(X,Y):-mother(A,X),father(B,X),mother(C,Y),father(D,Y),brother(B,C),X\=Y.
cousin(X,Y):-mother(A,X),father(B,X),mother(C,Y),father(D,Y),brother(B,D),X\=Y.

 