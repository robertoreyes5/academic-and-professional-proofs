/* tabla de proveedores, clave, nombre del proveedor, pais, calificacion*/
proveedores (p1, luis, mexico, 10).
proveedores (p2, alicia, usa, 10).
proveedores (p3, isabel, españa, 9).
proveedores (p4, oscar, brasil, 9).
proveedores (p5, victor, argentina, 8).
proveedores (p6, jose, canada, 8).
proveedores (p7, juan, china, 7).
proveedores (p8, maria, alemania, 10).
proveedores (p9, marcos, mexico, 6).
proveedores (p10, david, mexico, 7).
/* tabla de productos, clave del producto, descripcion, marca, precio, pais*/
productos (x1, microfono, br, 50, usa).
productos (x2, audifonos, sony, 10, usa).
productos (x3, monitor, samsumg, 200, mexico).
productos (x4, raton, samsung, 200, mexico).
productos (x5, pantalla, toshiba, 200, china).
productos (x6, teclado, toshiba, 80, china).
productos (x7, raton, br, 20, argentina).
productos (x8, teclado, sony, 80, argentina).
productos (x9, bocinas, sony, 90, argentina).
productos (x10,teclado,aktek,20,brasil)

/*tabla proveedores-productos. clave de la tabla, llave proveedores, clave productos
y cantidad*/
prov_prod (cvel, p1, x2, 100).
prov_prod (cve2, p2, x3, 10).
prov_prod (cve3, p3, x8, 10).
prov_prod (cve4, p4, x8, 20).
prov_prod (cve5, p5, x7, 30).
prov_prod (cve6, p5, x5, 5).
Prov_prod (cve7, p10, x3, 1).
prov_prod (cve8, p7, x3, 100).
/*Seleccionar la clave del proveedor*/

seleccionarClaveProv(x):-proveedores(x,_,_,_).
