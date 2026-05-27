progenitor(pascual,roberto).
pareja(manue,pascual).
hombre(pascual).
mujer(manue).
padre(eliseo,pascual)
madre(sofia,isabel)
hijo(x,y).
%hijo(X, Y) / hija(X, Y) /* X es hijo/a de Y */
hijo(x,y):-padre(x,y)
hijo(x,y):-madre(x,y)

