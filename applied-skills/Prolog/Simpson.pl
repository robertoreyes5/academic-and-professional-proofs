/*hombre(juan).
hombre(roberto). */

%The Simpson Family Tree
%Gender

male(homer).
male(abraham).
male(bart).
male(clancy).
male(seymourtSkiner).
male(milHouse).
male(santasLittleHelper).
male(kang).

%Female

female(marge).
female(lisa).
female(maggie).
female(mona).
female(jacque).
female(paty).
female(selma).
female(ednakrabappel).
female(snowball).

% Father Clauses
father(abraham, homer).
father(clancy,marge).
father(clancy,paty).
father(clancy,selma).
father(homer,bart).
father(homer,lisa).
father(homer,maggie).

%Mother Clauses
mother(jacque, marge).
mother(jacque, paty).
mother(jacque, selma).
mother(mona, homer).
mother(marge, bart).
mother(marge, lisa).
mother(marge, maggie).


%Parent predicate
parent(X, Y):-father (X,Y); mother(X,Y).

%Child predicates
child(X, Y):-parent (Y,X).
son(X, Y):-child(X,Y), male(X).
daughter(X,Y):-child(X,Y), female(X).


%Sibling predicates

sibling(X,Y): -parent(Z,X), parent(Z,Y), X \= Y.
brother(X,Y):-sibling(X, Y), male(X). %revisar a female
sister(X,Y):-sibling(X,Y), female(X). %revisar a male

%Grandparent predicates
grandparent(X,Y):-parent(X,Z), parent(Z,Y).
grandFather(X,Y):-grandparent(X, Y), male(X).
grandMother(X,Y):-grandparent(X,Y), female(X).

%Grandchild predicates

grandChild(X,Y):-grandparent(Y,X).
grandson(X, Y):-grandchild(X, Y), male(X).
granddaughter(X, Y):-grandChild(X, Y), female(X).

%Uncle/Aunt
parents_silblings(X, Y):-sibling(Z,X), parent(Z,Y).
uncle(X,Y):-parents_silblings(X,Y), male(X).
aunt(X,Y):-parents_silblings(X, Y), female(X).
