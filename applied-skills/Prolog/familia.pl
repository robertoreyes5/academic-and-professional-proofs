hombre (juan).
hombre (pedro).
hombre (jose)
hombre (renato).
hombre (johnel).
mujer (maria).
mujer (rosa).
mujer (ana).
mujer (paola).
mujer (analy).
progenitor (juan, ana).
progenitor (juan, jose).
progenitor (maria, ana).
progenitor (maria, jose).
progenitor (pedro, paola).
progenitor (pedro, renato).
progenitor (rosa, paola).
progenitor (rosa, renato).
progenitor (jose, johnel).
progenitor (jose, analy).
progenitor (paola, johnel).
progenitor (paola, analy).
pareja  (juan, maria).
pareja (maria, juan).
pareja (pedro, rosa).
pareja (rosa, pedro).
pareja (jose, paola).
pareja (paola, jose).


marido (X,Y) :-pareja (X, Y).
hombre (X).
esposa (X,Y) :-pareja (X, Y).
mujer (X).
padre (X,Y):-progenitor (X,Y), hombre (X).
madre (X,Y) :-progenitor (X,Y),mujer (X).
hijo (Y,X) :-progenitor (X,Y), hombre (Y).
hija (Y,X):-progenitor (X,Y),mujer (Y).
abuelo (X,Y) :-progenitor (M,Y) progenitor (x,M), hombre (X). abuela (X,Y):-progenitor (M,Y), progenitor (X,M),mujer (X).
hermana (X,Y) :-progenitor (ZX),progenitor (Z,Y),X ==Y, mujer (X).
hermano (X,Y) :-progenitor (Z,X), progenitor (Z,Y),X\==Y, hombre (X).
tio (X,Y) :-hermano (X,Z), progenitor Z,Y). tia (X,Y) :-hermana (X,Z), progenitor (Z,Y).
