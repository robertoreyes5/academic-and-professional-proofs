select pro.id_proyecto, pro.nombre_proyecto,mat.id_material,mat.nombre_material
from proyecto pro
INNER JOIN materiales mat
ON pro.Materiales_id_material=mat.id_material
WHERE fecha_inicio
BETWEEN "2022/03/02" AND "2022/04/05";

SELECT * 
FROM factura
WHERE correo_electronico
LIKE '%net%';

SELECT cli.id_cliente,cli.nombre,mat.id_material,mat.nombre_material
from cliente cli
INNER JOIN materiales mat
ON cli.Materiales_id_material=mat.id_material
WHERE nombre_material="Oro";

SELECT cli.id_cliente,cli.nombre,mat.id_material,mat.nombre_material
from cliente cli
INNER JOIN materiales mat
ON cli.Materiales_id_material=mat.id_material
WHERE nombre_material="Oro";


SELECT fa.id_factura,fa.modo_pago,cli.nombre,cli.rfc,mat.id_material,mat.nombre_material
from factura fa
INNER JOIN cliente cli
ON fa.Cliente_id_cliente=cli.id_cliente
INNER JOIN materiales mat
ON cli.Materiales_id_material=mat.id_material
WHERE modo_pago="Peso" and nombre_material="Oro";

#Vistas
CREATE  view factura_full AS
SELECT * 
FROM factura;

#Trigger
#Se crea la tabla 
CREATE TABLE `materiales_req` (
  `id_material` int NOT NULL,
  `precio` double NOT NULL,
  `nombre_material` varchar(45) NOT NULL,
  PRIMARY KEY (`id_material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

Drop trigger material_tri;
CREATE TRIGGER material_tri AFTER INSERT ON  materiales FOR EACH ROW INSERT INTO materiales_req (
id_material,precio,nombre_material
) VALUES (NEW.id_material, NEW.precio, NEW.nombre_material);

INSERT INTO `materiales` VALUES (8,3500,'Bronce');