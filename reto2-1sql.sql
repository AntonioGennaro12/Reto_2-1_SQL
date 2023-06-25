/* Crear una Base de Datos de Gatitos para un Cat Café */

CREATE DATABASE cat_cafe; /* Crea la base "cat_cafe" */

SHOW DATABASES;

USE cat_cafe; /*  inicio sesión con la base de datos */

SHOW TABLES;

/* Creo la tabla segun los datos mínimos requeridos */
/* Por la sdudas pongo todos lo sposibles campos que parecen en la descripción 1 */
CREATE TABLE gatitos(
    nro INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    apodo VARCHAR (10) NULL,
    edad TINYINT NOT NULL,
    peso FLOAT(2,1) NOT NULL,
    color VARCHAR(30) NOT NULL,
    colorOjos VARCHAR (30) NOT NULL,
    llegoCon VARCHAR (20) NULL,
    legusta VARCHAR (40) NULL,
    PRIMARY KEY (nro)
);

SHOW TABLES;

/* Describe la estructura de la tabla */
DESCRIBE gatitos;

/*Muestra TODO(*) el contenido de la tabla indicada*/
SELECT * FROM gatitos;
/* indica "Empty set" */
/*
Rocket: tiene 3 años, pesa 3kg, le gusta dormir mucho, llego junto con Sunny, es de color blanco y tiene ojos celestes
Pinto (Pin): tiene 5 años, pesa 3,5kg, le gustan los mimos, es de color naranja con blanco y tiene ojos amarillo con verde
Sunny: tiene 2 años, pesa 5kg, le encanta jugar con pelotitas, es de color negro y tiene ojos amarillentos
Emelia (Emeli): tiene 5 años, pesa 4,4kg, le encanta reposar donde hay sol, llego junto con Seiko, es de color gris con negro y tiene ojos amarillentos
Nikki: tiene 4 años, pesa 4,3kg, no se despega de Ricochet, es de color gris y tiene ojos verdes claros
Ricochet: tiene 4 años, pesa 4,7kg, le gustan los lugares altos, es de color blanco con gris y tiene ojos celestes
Onyx: tiene 7 años, pesa 3,3kg, va donde hay comida, es de color naranja con marron y tiene ojos amarillentos
Seiko: tiene 2 años, pesa 3,7kg, le gusta dormir junto a otros gatos, es de color blanco con gris y tiene ojos verdosos
Nathan (Ninja nate): tiene 7 años, pesa 4,5kg, le encanta esconderse, es de color negro y tiene ojos amarillentos
*/
/* Inserta registros en la tabla creada */
INSERT INTO gatitos (nombre, apodo, edad, peso, color, colorOjos, llegoCon, legusta) VALUES 
                                    ("Rocket", "", 3, 3.0, "Blanco", "Celeste", "Sunny", "Dormir mucho");
SELECT * FROM gatitos;
/* muestra registro nro 1 OK */
+-----+--------+-------+------+------+--------+-----------+----------+--------------+
| nro | nombre | apodo | edad | peso | color  | colorOjos | llegoCon | legusta      |
+-----+--------+-------+------+------+--------+-----------+----------+--------------+
|   1 | Rocket |       |    3 |  3.0 | Blanco | Celeste   | Sunny    | Dormir mucho |
+-----+--------+-------+------+------+--------+-----------+----------+--------------+
/* sigo con 2 entradas más */ 
INSERT INTO gatitos (nombre, apodo, edad, peso, color, colorOjos, llegoCon, legusta) VALUES 
                                    ("Pinto", "Pin", 5, 3.5, "Naranja y Blanco", "Amarillo y Verde", "", "Mimos");
INSERT INTO gatitos (nombre, apodo, edad, peso, color, colorOjos, llegoCon, legusta) VALUES 
                                    ("Sunny", "", 2, 5.0, "Negro", "Amarillento", "", "Jugar con Pelotitas");
SELECT * FROM gatitos;
+-----+--------+-------+------+------+------------------+------------------+----------+---------------------+
| nro | nombre | apodo | edad | peso | color            | colorOjos        | llegoCon | legusta             |
+-----+--------+-------+------+------+------------------+------------------+----------+---------------------+
|   1 | Rocket |       |    3 |  3.0 | Blanco           | Celeste          | Sunny    | Dormir mucho        |
|   2 | Pinto  | Pin   |    5 |  3.5 | Naranja y Blanco | Amarillo y Verde |          | Mimos               |
|   3 | Sunny  |       |    2 |  5.0 | Negro            | Amarillento      |          | Jugar con Pelotitas |
+-----+--------+-------+------+------+------------------+------------------+----------+---------------------+
INSERT INTO gatitos (nombre, apodo, edad, peso, color, colorOjos, llegoCon, legusta) VALUES 
                                    ("Emelia", "Emeli", 5, 4.4, "Gris y Negro", "Amarillentos", "Seiko", "Reposar al Sol");
INSERT INTO gatitos (nombre, apodo, edad, peso, color, colorOjos, llegoCon, legusta) VALUES 
                                    ("Nikki", "", 4, 4.3, "Gris", "Verde claro", "", "Estar con Ricochet");
SELECT * FROM gatitos; 
+-----+--------+-------+------+------+------------------+------------------+----------+---------------------+
| nro | nombre | apodo | edad | peso | color            | colorOjos        | llegoCon | legusta             |
+-----+--------+-------+------+------+------------------+------------------+----------+---------------------+
|   1 | Rocket |       |    3 |  3.0 | Blanco           | Celeste          | Sunny    | Dormir mucho        |
|   2 | Pinto  | Pin   |    5 |  3.5 | Naranja y Blanco | Amarillo y Verde |          | Mimos               |
|   3 | Sunny  |       |    2 |  5.0 | Negro            | Amarillento      |          | Jugar con Pelotitas |
|   4 | Emelia | Emeli |    5 |  4.4 | Gris y Negro     | Amarillentos     | Seiko    | Reposar al Sol      |
|   5 | Nikki  |       |    4 |  4.3 | Gris             | Verde claro      |          | Estar con Ricochet  |
+-----+--------+-------+------+------+------------------+------------------+----------+---------------------+                                  
INSERT INTO gatitos (nombre, apodo, edad, peso, color, colorOjos, llegoCon, legusta) VALUES 
                                    ("Ricochet", "", 4, 4.7, "Blanco y Gris", "Celestes", "", "Lugares Altos");
INSERT INTO gatitos (nombre, apodo, edad, peso, color, colorOjos, llegoCon, legusta) VALUES 
                                    ("Onyx", "", 7, 3.3, "Naranja Marron", "Amarillentos", "", "Ir dónde hay comida");
INSERT INTO gatitos (nombre, apodo, edad, peso, color, colorOjos, llegoCon, legusta) VALUES 
                                    ("Seiko", "", 2, 3.7, "Blanco y Gris", "Verdosos", "", "Dormir junto a otros gatos");
INSERT INTO gatitos (nombre, apodo, edad, peso, color, colorOjos, llegoCon, legusta) VALUES 
                                    ("Nathan", "Ninja nate", 7, 4.5, "Negro", "Amarillentos", "", "Esconderse");
SELECT * FROM gatitos; 
+-----+----------+------------+------+------+------------------+------------------+----------+----------------------------+
| nro | nombre   | apodo      | edad | peso | color            | colorOjos        | llegoCon | legusta                    |
+-----+----------+------------+------+------+------------------+------------------+----------+----------------------------+
|   1 | Rocket   |            |    3 |  3.0 | Blanco           | Celeste          | Sunny    | Dormir mucho               |
|   2 | Pinto    | Pin        |    5 |  3.5 | Naranja y Blanco | Amarillo y Verde |          | Mimos                      |
|   3 | Sunny    |            |    2 |  5.0 | Negro            | Amarillento      |          | Jugar con Pelotitas        |
|   4 | Emelia   | Emeli      |    5 |  4.4 | Gris y Negro     | Amarillentos     | Seiko    | Reposar al Sol             |
|   5 | Nikki    |            |    4 |  4.3 | Gris             | Verde claro      |          | Estar con Ricochet         |
|   6 | Ricochet |            |    4 |  4.7 | Blanco y Gris    | Celestes         |          | Lugares Altos              |
|   7 | Onyx     |            |    7 |  3.3 | Naranja Marron   | Amarillentos     |          | Ir dónde hay comida        |
|   8 | Seiko    |            |    2 |  3.7 | Blanco y Gris    | Verdosos         |          | Dormir junto a otros gatos |
|   9 | Nathan   | Ninja nate |    7 |  4.5 | Negro            | Amarillentos     |          | Esconderse                 |
+-----+----------+------------+------+------+------------------+------------------+----------+----------------------------+
/* 2 */ 
/* Ahora cambio los "apodos" que ya fueron cargados con "" por la frase "no tiene" */ 
UPDATE gatitos
SET apodo = CASE
    WHEN apodo = "" THEN "no tiene"
    ELSE apodo
    END;
/*verifico */
SELECT * FROM gatitos;
+-----+----------+------------+------+------+------------------+------------------+----------+----------------------------+
| nro | nombre   | apodo      | edad | peso | color            | colorOjos        | llegoCon | legusta                    |
+-----+----------+------------+------+------+------------------+------------------+----------+----------------------------+
|   1 | Rocket   | no tiene   |    3 |  3.0 | Blanco           | Celeste          | Sunny    | Dormir mucho               |
|   2 | Pinto    | Pin        |    5 |  3.5 | Naranja y Blanco | Amarillo y Verde |          | Mimos                      |
|   3 | Sunny    | no tiene   |    2 |  5.0 | Negro            | Amarillento      |          | Jugar con Pelotitas        |
|   4 | Emelia   | Emeli      |    5 |  4.4 | Gris y Negro     | Amarillentos     | Seiko    | Reposar al Sol             |
|   5 | Nikki    | no tiene   |    4 |  4.3 | Gris             | Verde claro      |          | Estar con Ricochet         |
|   6 | Ricochet | no tiene   |    4 |  4.7 | Blanco y Gris    | Celestes         |          | Lugares Altos              |
|   7 | Onyx     | no tiene   |    7 |  3.3 | Naranja Marron   | Amarillentos     |          | Ir dónde hay comida        |
|   8 | Seiko    | no tiene   |    2 |  3.7 | Blanco y Gris    | Verdosos         |          | Dormir junto a otros gatos |
|   9 | Nathan   | Ninja nate |    7 |  4.5 | Negro            | Amarillentos     |          | Esconderse                 |
+-----+----------+------------+------+------+------------------+------------------+----------+----------------------------+
/* 3 */ 
/* Ahora altero la tabla en columna "apodo" para asignar el valor por defecto "no tiene" a los gatitos que no tienen apodo */ 
ALTER TABLE gatitos
ALTER COLUMN apodo SET DEFAULT 'no tiene';
SELECT * FROM gatitos;
/* Agrego uno para probar */
INSERT INTO gatitos (nombre, edad, peso, color, colorOjos, llegoCon, legusta) VALUES 
                                    ("Blue", 4, 3.5, "Azul", "Amarillo", "", "Comer");
SELECT * FROM gatitos;
+-----+----------+------------+------+------+------------------+------------------+----------+----------------------------+
| nro | nombre   | apodo      | edad | peso | color            | colorOjos        | llegoCon | legusta                    |
+-----+----------+------------+------+------+------------------+------------------+----------+----------------------------+
|   1 | Rocket   | no tiene   |    3 |  3.0 | Blanco           | Celeste          | Sunny    | Dormir mucho               |
|   2 | Pinto    | Pin        |    5 |  3.5 | Naranja y Blanco | Amarillo y Verde |          | Mimos                      |
|   3 | Sunny    | no tiene   |    2 |  5.0 | Negro            | Amarillento      |          | Jugar con Pelotitas        |
|   4 | Emelia   | Emeli      |    5 |  4.4 | Gris y Negro     | Amarillentos     | Seiko    | Reposar al Sol             |
|   5 | Nikki    | no tiene   |    4 |  4.3 | Gris             | Verde claro      |          | Estar con Ricochet         |
|   6 | Ricochet | no tiene   |    4 |  4.7 | Blanco y Gris    | Celestes         |          | Lugares Altos              |
|   7 | Onyx     | no tiene   |    7 |  3.3 | Naranja Marron   | Amarillentos     |          | Ir dónde hay comida        |
|   8 | Seiko    | no tiene   |    2 |  3.7 | Blanco y Gris    | Verdosos         |          | Dormir junto a otros gatos |
|   9 | Nathan   | Ninja nate |    7 |  4.5 | Negro            | Amarillentos     |          | Esconderse                 |
|  11 | Blue     | no tiene   |    4 |  3.5 | Azul             | Amarillo         |          | Comer                      |
+-----+----------+------------+------+------+------------------+------------------+----------+----------------------------+
/* Nro 4 hago lo mismo con la columan "llegoCon", primero agrego que "vino solito" y luego se se agregue por default */
UPDATE gatitos
SET llegoCon = CASE
    WHEN llegoCon = "" THEN "vino solito"
    ELSE llegoCon
    END;
/*verifico */
SELECT * FROM gatitos;
+-----+----------+------------+------+------+------------------+------------------+-------------+----------------------------+
| nro | nombre   | apodo      | edad | peso | color            | colorOjos        | llegoCon    | legusta                    |
+-----+----------+------------+------+------+------------------+------------------+-------------+----------------------------+
|   1 | Rocket   | no tiene   |    3 |  3.0 | Blanco           | Celeste          | Sunny       | Dormir mucho               |
|   2 | Pinto    | Pin        |    5 |  3.5 | Naranja y Blanco | Amarillo y Verde | vino solito | Mimos                      |
|   3 | Sunny    | no tiene   |    2 |  5.0 | Negro            | Amarillento      | vino solito | Jugar con Pelotitas        |
|   4 | Emelia   | Emeli      |    5 |  4.4 | Gris y Negro     | Amarillentos     | Seiko       | Reposar al Sol             |
|   5 | Nikki    | no tiene   |    4 |  4.3 | Gris             | Verde claro      | vino solito | Estar con Ricochet         |
|   6 | Ricochet | no tiene   |    4 |  4.7 | Blanco y Gris    | Celestes         | vino solito | Lugares Altos              |
|   7 | Onyx     | no tiene   |    7 |  3.3 | Naranja Marron   | Amarillentos     | vino solito | Ir dónde hay comida        |
|   8 | Seiko    | no tiene   |    2 |  3.7 | Blanco y Gris    | Verdosos         | vino solito | Dormir junto a otros gatos |
|   9 | Nathan   | Ninja nate |    7 |  4.5 | Negro            | Amarillentos     | vino solito | Esconderse                 |
|  10 | Blue     | no tiene   |    4 |  3.5 | Azul             | Amarillo         | vino solito | Comer                      |
+-----+----------+------------+------+------+------------------+------------------+-------------+----------------------------+
/* Ahora para los nuevos que se agreguen (ojo no hay que incluir nada cuando no se use esa columna) */ 
ALTER TABLE gatitos
ALTER COLUMN llegoCon SET DEFAULT 'vino solito';
SELECT * FROM gatitos;
/* Agrego uno para probar (con "apodo", pero sin "llegoCon")*/
INSERT INTO gatitos (nombre, apodo, edad, peso, color, colorOjos, legusta) VALUES 
                                    ("Browni", "Bini", 3, 4.5, "Marron", "Verde", "Salir a pasear");
SELECT * FROM gatitos;
+-----+----------+------------+------+------+------------------+------------------+-------------+----------------------------+
| nro | nombre   | apodo      | edad | peso | color            | colorOjos        | llegoCon    | legusta                    |
+-----+----------+------------+------+------+------------------+------------------+-------------+----------------------------+
|   1 | Rocket   | no tiene   |    3 |  3.0 | Blanco           | Celeste          | Sunny       | Dormir mucho               |
|   2 | Pinto    | Pin        |    5 |  3.5 | Naranja y Blanco | Amarillo y Verde | vino solito | Mimos                      |
|   3 | Sunny    | no tiene   |    2 |  5.0 | Negro            | Amarillento      | vino solito | Jugar con Pelotitas        |
|   4 | Emelia   | Emeli      |    5 |  4.4 | Gris y Negro     | Amarillentos     | Seiko       | Reposar al Sol             |
|   5 | Nikki    | no tiene   |    4 |  4.3 | Gris             | Verde claro      | vino solito | Estar con Ricochet         |
|   6 | Ricochet | no tiene   |    4 |  4.7 | Blanco y Gris    | Celestes         | vino solito | Lugares Altos              |
|   7 | Onyx     | no tiene   |    7 |  3.3 | Naranja Marron   | Amarillentos     | vino solito | Ir dónde hay comida        |
|   8 | Seiko    | no tiene   |    2 |  3.7 | Blanco y Gris    | Verdosos         | vino solito | Dormir junto a otros gatos |
|   9 | Nathan   | Ninja nate |    7 |  4.5 | Negro            | Amarillentos     | vino solito | Esconderse                 |
|  10 | Blue     | no tiene   |    4 |  3.5 | Azul             | Amarillo         | vino solito | Comer                      |
|  11 | Browni   | Bini       |    3 |  4.5 | Marron           | Verde            | vino solito | Salir a pasear             |
+-----+----------+------------+------+------+------------------+------------------+-------------+----------------------------+
/* 6 - Hay que agregar una columna después del "peso" denominada "conDieta" con un valor d edefault igual a FALSE */  
ALTER TABLE gatitos
ADD COLUMN conDieta BOOLEAN AFTER peso;
+-----+----------+------------+------+------+----------+------------------+------------------+-------------+----------------------------+
| nro | nombre   | apodo      | edad | peso | conDieta | color            | colorOjos        | llegoCon    | legusta                    |
+-----+----------+------------+------+------+----------+------------------+------------------+-------------+----------------------------+
|   1 | Rocket   | no tiene   |    3 |  3.0 |     NULL | Blanco           | Celeste          | Sunny       | Dormir mucho               |
|   2 | Pinto    | Pin        |    5 |  3.5 |     NULL | Naranja y Blanco | Amarillo y Verde | vino solito | Mimos                      |
|   3 | Sunny    | no tiene   |    2 |  5.0 |     NULL | Negro            | Amarillento      | vino solito | Jugar con Pelotitas        |
|   4 | Emelia   | Emeli      |    5 |  4.4 |     NULL | Gris y Negro     | Amarillentos     | Seiko       | Reposar al Sol             |
|   5 | Nikki    | no tiene   |    4 |  4.3 |     NULL | Gris             | Verde claro      | vino solito | Estar con Ricochet         |
|   6 | Ricochet | no tiene   |    4 |  4.7 |     NULL | Blanco y Gris    | Celestes         | vino solito | Lugares Altos              |
|   7 | Onyx     | no tiene   |    7 |  3.3 |     NULL | Naranja Marron   | Amarillentos     | vino solito | Ir dónde hay comida        |
|   8 | Seiko    | no tiene   |    2 |  3.7 |     NULL | Blanco y Gris    | Verdosos         | vino solito | Dormir junto a otros gatos |
|   9 | Nathan   | Ninja nate |    7 |  4.5 |     NULL | Negro            | Amarillentos     | vino solito | Esconderse                 |
|  10 | Blue     | no tiene   |    4 |  3.5 |     NULL | Azul             | Amarillo         | vino solito | Comer                      |
|  11 | Browni   | Bini       |    3 |  4.5 |     NULL | Marron           | Verde            | vino solito | Salir a pasear             |
+-----+----------+------------+------+------+----------+------------------+------------------+-------------+----------------------------+
/* Todo bien, pero la columna "conDieta" aparece con un valor por defecto = a NULL y no a "FALSE" ó "0" */  
ALTER TABLE gatitos
ALTER COLUMN conDieta SET DEFAULT 0;
/* Ahora cambio la columna para que los registros existentes queden en FALSE (0) cuando el peso es 4kg o menos , sino TRUE (1) */
UPDATE gatitos
SET conDieta = CASE
    WHEN peso <= 4.0 THEN FALSE
    ELSE TRUE
    END;
/*verifico */
SELECT * FROM gatitos; 
+-----+----------+------------+------+------+----------+------------------+------------------+-------------+----------------------------+
| nro | nombre   | apodo      | edad | peso | conDieta | color            | colorOjos        | llegoCon    | legusta                    |
+-----+----------+------------+------+------+----------+------------------+------------------+-------------+----------------------------+
|   1 | Rocket   | no tiene   |    3 |  3.0 |        0 | Blanco           | Celeste          | Sunny       | Dormir mucho               |
|   2 | Pinto    | Pin        |    5 |  3.5 |        0 | Naranja y Blanco | Amarillo y Verde | vino solito | Mimos                      |
|   3 | Sunny    | no tiene   |    2 |  5.0 |        1 | Negro            | Amarillento      | vino solito | Jugar con Pelotitas        |
|   4 | Emelia   | Emeli      |    5 |  4.4 |        1 | Gris y Negro     | Amarillentos     | Seiko       | Reposar al Sol             |
|   5 | Nikki    | no tiene   |    4 |  4.3 |        1 | Gris             | Verde claro      | vino solito | Estar con Ricochet         |
|   6 | Ricochet | no tiene   |    4 |  4.7 |        1 | Blanco y Gris    | Celestes         | vino solito | Lugares Altos              |
|   7 | Onyx     | no tiene   |    7 |  3.3 |        0 | Naranja Marron   | Amarillentos     | vino solito | Ir dónde hay comida        |
|   8 | Seiko    | no tiene   |    2 |  3.7 |        0 | Blanco y Gris    | Verdosos         | vino solito | Dormir junto a otros gatos |
|   9 | Nathan   | Ninja nate |    7 |  4.5 |        1 | Negro            | Amarillentos     | vino solito | Esconderse                 |
|  10 | Blue     | no tiene   |    4 |  3.5 |        0 | Azul             | Amarillo         | vino solito | Comer                      |
|  11 | Browni   | Bini       |    3 |  4.5 |        1 | Marron           | Verde            | vino solito | Salir a pasear             |
+-----+----------+------------+------+------+----------+------------------+------------------+-------------+----------------------------+
/* Ahora hay que modificar para que los próximos registros pongan por default el valor 0 ó 1 en "conDieta" si el peso es mayor a 4Kg */
ALTER TABLE gatitos
ALTER COLUMN conDieta SET DEFAULT (CASE WHEN peso > 4.0 THEN 1 ELSE 0 END);
DESCRIBE gatitos;
+-----------+-------------+------+-----+----------------------------------------------+-------------------+
| Field     | Type        | Null | Key | Default                                      | Extra             |
+-----------+-------------+------+-----+----------------------------------------------+-------------------+
| nro       | int         | NO   | PRI | NULL                                         | auto_increment    |
| nombre    | varchar(20) | NO   |     | NULL                                         |                   |
| apodo     | varchar(10) | YES  |     | no tiene                                     |                   |
| edad      | tinyint     | NO   |     | NULL                                         |                   |
| peso      | float(2,1)  | NO   |     | NULL                                         |                   |
| conDieta  | tinyint(1)  | YES  |     | (case when (`peso` > 4.0) then 1 else 0 end) | DEFAULT_GENERATED |
| color     | varchar(30) | NO   |     | NULL                                         |                   |
| colorOjos | varchar(30) | NO   |     | NULL                                         |                   |
| llegoCon  | varchar(20) | YES  |     | vino solito                                  |                   |
| legusta   | varchar(40) | YES  |     | NULL                                         |                   |
+-----------+-------------+------+-----+----------------------------------------------+-------------------+
/* Se supone que se ha tomado la modificación */
/* 7 - Agregar los años que faltan para que los michis se jubilen, que es a los 11 años (debe aparecer al lado de edad) */
/* Agrego la columna "aniosQueFaltan" del tipo TINYINT como la diferencia entre los años ingresados y los 11 años */
ALTER TABLE gatitos
ADD COLUMN aniosQueFaltan TINYINT AFTER edad; 
DESCRIBE gatitos;
+----------------+-------------+------+-----+----------------------------------------------+-------------------+
| Field          | Type        | Null | Key | Default                                      | Extra             |
+----------------+-------------+------+-----+----------------------------------------------+-------------------+
| nro            | int         | NO   | PRI | NULL                                         | auto_increment    |
| nombre         | varchar(20) | NO   |     | NULL                                         |                   |
| apodo          | varchar(10) | YES  |     | no tiene                                     |                   |
| edad           | tinyint     | NO   |     | NULL                                         |                   |
| aniosQueFaltan | tinyint     | YES  |     | NULL                                         |                   |
| peso           | float(2,1)  | NO   |     | NULL                                         |                   |
| conDieta       | tinyint(1)  | YES  |     | (case when (`peso` > 4.0) then 1 else 0 end) | DEFAULT_GENERATED |
| color          | varchar(30) | NO   |     | NULL                                         |                   |
| colorOjos      | varchar(30) | NO   |     | NULL                                         |                   |
| llegoCon       | varchar(20) | YES  |     | vino solito                                  |                   |
| legusta        | varchar(40) | YES  |     | NULL                                         |                   |
+----------------+-------------+------+-----+----------------------------------------------+-------------------+
/* Ahí se ve la nueva columna .. Nota está como que puede ser NULL, pero como tiene asignación por defecto como la conDieta
   no considero que sea necesario agregarle el modificdor "NOT NULL" */
/* Ahora completo los 11 registros con el dato de los añios que faltan para los 11 */
UPDATE gatitos
SET aniosQueFaltan = 11 - edad;
/*verifico */
SELECT * FROM gatitos; 
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
| nro | nombre   | apodo      | edad | aniosQueFaltan | peso | conDieta | color            | colorOjos        | llegoCon    | legusta                    |
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
|   1 | Rocket   | no tiene   |    3 |              8 |  3.0 |        0 | Blanco           | Celeste          | Sunny       | Dormir mucho               |
|   2 | Pinto    | Pin        |    5 |              6 |  3.5 |        0 | Naranja y Blanco | Amarillo y Verde | vino solito | Mimos                      |
|   3 | Sunny    | no tiene   |    2 |              9 |  5.0 |        1 | Negro            | Amarillento      | vino solito | Jugar con Pelotitas        |
|   4 | Emelia   | Emeli      |    5 |              6 |  4.4 |        1 | Gris y Negro     | Amarillentos     | Seiko       | Reposar al Sol             |
|   5 | Nikki    | no tiene   |    4 |              7 |  4.3 |        1 | Gris             | Verde claro      | vino solito | Estar con Ricochet         |
|   6 | Ricochet | no tiene   |    4 |              7 |  4.7 |        1 | Blanco y Gris    | Celestes         | vino solito | Lugares Altos              |
|   7 | Onyx     | no tiene   |    7 |              4 |  3.3 |        0 | Naranja Marron   | Amarillentos     | vino solito | Ir dónde hay comida        |
|   8 | Seiko    | no tiene   |    2 |              9 |  3.7 |        0 | Blanco y Gris    | Verdosos         | vino solito | Dormir junto a otros gatos |
|   9 | Nathan   | Ninja nate |    7 |              4 |  4.5 |        1 | Negro            | Amarillentos     | vino solito | Esconderse                 |
|  10 | Blue     | no tiene   |    4 |              7 |  3.5 |        0 | Azul             | Amarillo         | vino solito | Comer                      |
|  11 | Browni   | Bini       |    3 |              8 |  4.5 |        1 | Marron           | Verde            | vino solito | Salir a pasear             |
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
/* OK ahora a crear un TRIGGER para que en todo nuevo registro se cargue automáticamente la columna "aniosQueFaltan" */
DELIMITER //
CREATE TRIGGER calcular_aniosQueFaltan BEFORE INSERT ON gatitos
FOR EACH ROW
BEGIN
  SET NEW.aniosQueFaltan = 11 - NEW.edad;
END//
DELIMITER ;
/* no da errores por lo tanto se asume que tomó bien la consigna, deberíamos verificar ingresando registros nuevos */
/* Investigando en ChatGPT sugieren utilizar el siguiente comando para forzar el llenado de los valores correspondientes 
a los aniosQueFaltan utilizando el trigger creado, pero como ya lo había hecho la introducción de ese comando no produjo nada */
SELECT * FROM gatitos WHERE 1=0;
/* para probar en otra oportunidad */
/* 8 - Agregar 2 nuevos registros */
/*
Toffee (Tofisito): tiene 4 años, pesa 3,4kg, le gusta jugar y estar solo a veces, es de color blanco con gris y tiene ojos verdosos
Chucky: tiene 10 años, pesa 4,3kg, le gusta dormir y caminar, es de color naranja con blanco y tiene ojos amarillentos
*/
INSERT INTO gatitos (nombre, apodo, edad, peso, color, colorOjos, legusta) VALUES 
                                    ("Toffee", "Tofisito", 4, 3.4, "Blanco y Gris", "Verdosos", "Jugar y estar solo a veces");
INSERT INTO gatitos (nombre, edad, peso, color, colorOjos, legusta) VALUES 
                                    ("Chucky", 10, 4.3, "Naranja y Blanco", "Amarillentos", "Dormir y caminar");

SELECT * FROM gatitos;
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
| nro | nombre   | apodo      | edad | aniosQueFaltan | peso | conDieta | color            | colorOjos        | llegoCon    | legusta                    |
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
|   1 | Rocket   | no tiene   |    3 |              8 |  3.0 |        0 | Blanco           | Celeste          | Sunny       | Dormir mucho               |
|   2 | Pinto    | Pin        |    5 |              6 |  3.5 |        0 | Naranja y Blanco | Amarillo y Verde | vino solito | Mimos                      |
|   3 | Sunny    | no tiene   |    2 |              9 |  5.0 |        1 | Negro            | Amarillento      | vino solito | Jugar con Pelotitas        |
|   4 | Emelia   | Emeli      |    5 |              6 |  4.4 |        1 | Gris y Negro     | Amarillentos     | Seiko       | Reposar al Sol             |
|   5 | Nikki    | no tiene   |    4 |              7 |  4.3 |        1 | Gris             | Verde claro      | vino solito | Estar con Ricochet         |
|   6 | Ricochet | no tiene   |    4 |              7 |  4.7 |        1 | Blanco y Gris    | Celestes         | vino solito | Lugares Altos              |
|   7 | Onyx     | no tiene   |    7 |              4 |  3.3 |        0 | Naranja Marron   | Amarillentos     | vino solito | Ir dónde hay comida        |
|   8 | Seiko    | no tiene   |    2 |              9 |  3.7 |        0 | Blanco y Gris    | Verdosos         | vino solito | Dormir junto a otros gatos |
|   9 | Nathan   | Ninja nate |    7 |              4 |  4.5 |        1 | Negro            | Amarillentos     | vino solito | Esconderse                 |
|  10 | Blue     | no tiene   |    4 |              7 |  3.5 |        0 | Azul             | Amarillo         | vino solito | Comer                      |
|  11 | Browni   | Bini       |    3 |              8 |  4.5 |        1 | Marron           | Verde            | vino solito | Salir a pasear             |
|  12 | Toffee   | Tofisito   |    4 |              7 |  3.4 |        0 | Blanco y Gris    | Verdosos         | vino solito | Jugar y estar solo a veces |
|  13 | Chucky   | no tiene   |   10 |              1 |  4.3 |        0 | Naranja y Blanco | Amarillentos     | vino solito | Dormir y caminar           |
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
/* Se ve que todo está bien pero no funcionó el valor de la columna "conDieta" para el registro nro 13, el peso es 4.3 x lo q debería ser ! y no 0 */
/* volví a consultar y ahora es dudodso, pero como se ve más arriba eso funcionó con los 2 registros que ingresé de prueba...*/
/* Vamos con el TRIGGER, con cambio de DELIMITADOR a // */
DELIMITER //
CREATE TRIGGER actualizar_conDieta BEFORE INSERT ON gatitos
FOR EACH ROW
BEGIN
    IF NEW.peso > 4.0 THEN
        SET NEW.conDieta = 1;
    ELSE
        SET NEW.conDieta = 0;
    END IF;
END//
DELIMITER ;
/* Borro el ultimo registro ingresado, resincronizo el contador y vuelvo a aingresar el ultimo registro */
DELETE FROM gatitos
WHERE nro = 13;
/* verifico número de registros */ 
SELECT MAX(nro) FROM gatitos;
+----------+
| MAX(nro) |
+----------+
|       12 |
+----------+
/* Altero el auto increment pra que siga con el número 13 y no 14 */
ALTER TABLE gatitos AUTO_INCREMENT = 13;
/* Quedó así:  */
SELECT * FROM gatitos;
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
| nro | nombre   | apodo      | edad | aniosQueFaltan | peso | conDieta | color            | colorOjos        | llegoCon    | legusta                    |
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
|   1 | Rocket   | no tiene   |    3 |              8 |  3.0 |        0 | Blanco           | Celeste          | Sunny       | Dormir mucho               |
|   2 | Pinto    | Pin        |    5 |              6 |  3.5 |        0 | Naranja y Blanco | Amarillo y Verde | vino solito | Mimos                      |
|   3 | Sunny    | no tiene   |    2 |              9 |  5.0 |        1 | Negro            | Amarillento      | vino solito | Jugar con Pelotitas        |
|   4 | Emelia   | Emeli      |    5 |              6 |  4.4 |        1 | Gris y Negro     | Amarillentos     | Seiko       | Reposar al Sol             |
|   5 | Nikki    | no tiene   |    4 |              7 |  4.3 |        1 | Gris             | Verde claro      | vino solito | Estar con Ricochet         |
|   6 | Ricochet | no tiene   |    4 |              7 |  4.7 |        1 | Blanco y Gris    | Celestes         | vino solito | Lugares Altos              |
|   7 | Onyx     | no tiene   |    7 |              4 |  3.3 |        0 | Naranja Marron   | Amarillentos     | vino solito | Ir dónde hay comida        |
|   8 | Seiko    | no tiene   |    2 |              9 |  3.7 |        0 | Blanco y Gris    | Verdosos         | vino solito | Dormir junto a otros gatos |
|   9 | Nathan   | Ninja nate |    7 |              4 |  4.5 |        1 | Negro            | Amarillentos     | vino solito | Esconderse                 |
|  10 | Blue     | no tiene   |    4 |              7 |  3.5 |        0 | Azul             | Amarillo         | vino solito | Comer                      |
|  11 | Browni   | Bini       |    3 |              8 |  4.5 |        1 | Marron           | Verde            | vino solito | Salir a pasear             |
|  12 | Toffee   | Tofisito   |    4 |              7 |  3.4 |        0 | Blanco y Gris    | Verdosos         | vino solito | Jugar y estar solo a veces |
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
/* Inserto nuevamente a "Chucky"  */
INSERT INTO gatitos (nombre, edad, peso, color, colorOjos, legusta) VALUES 
                                    ("Chucky", 10, 4.3, "Naranja y Blanco", "Amarillentos", "Dormir y caminar");
SELECT * FROM gatitos;
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
| nro | nombre   | apodo      | edad | aniosQueFaltan | peso | conDieta | color            | colorOjos        | llegoCon    | legusta                    |
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
|   1 | Rocket   | no tiene   |    3 |              8 |  3.0 |        0 | Blanco           | Celeste          | Sunny       | Dormir mucho               |
|   2 | Pinto    | Pin        |    5 |              6 |  3.5 |        0 | Naranja y Blanco | Amarillo y Verde | vino solito | Mimos                      |
|   3 | Sunny    | no tiene   |    2 |              9 |  5.0 |        1 | Negro            | Amarillento      | vino solito | Jugar con Pelotitas        |
|   4 | Emelia   | Emeli      |    5 |              6 |  4.4 |        1 | Gris y Negro     | Amarillentos     | Seiko       | Reposar al Sol             |
|   5 | Nikki    | no tiene   |    4 |              7 |  4.3 |        1 | Gris             | Verde claro      | vino solito | Estar con Ricochet         |
|   6 | Ricochet | no tiene   |    4 |              7 |  4.7 |        1 | Blanco y Gris    | Celestes         | vino solito | Lugares Altos              |
|   7 | Onyx     | no tiene   |    7 |              4 |  3.3 |        0 | Naranja Marron   | Amarillentos     | vino solito | Ir dónde hay comida        |
|   8 | Seiko    | no tiene   |    2 |              9 |  3.7 |        0 | Blanco y Gris    | Verdosos         | vino solito | Dormir junto a otros gatos |
|   9 | Nathan   | Ninja nate |    7 |              4 |  4.5 |        1 | Negro            | Amarillentos     | vino solito | Esconderse                 |
|  10 | Blue     | no tiene   |    4 |              7 |  3.5 |        0 | Azul             | Amarillo         | vino solito | Comer                      |
|  11 | Browni   | Bini       |    3 |              8 |  4.5 |        1 | Marron           | Verde            | vino solito | Salir a pasear             |
|  12 | Toffee   | Tofisito   |    4 |              7 |  3.4 |        0 | Blanco y Gris    | Verdosos         | vino solito | Jugar y estar solo a veces |
|  13 | Chucky   | no tiene   |   10 |              1 |  4.3 |        1 | Naranja y Blanco | Amarillentos     | vino solito | Dormir y caminar           |
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
/* Por lo que se ve ahora sí para el nro 13 Chucky aparece el conDieta =1  */ 
/* Fin */
/* No obstante ingreso un nuevo gatito similar a Chucky pra ver que pasa con los casos sensibles */
INSERT INTO gatitos (nombre, edad, peso, color, colorOjos, legusta) VALUES 
                                    ("Michi", 6, 5.2, "Gris Oscuro", "Negros", "Estar echado todo el día");
SELECT * FROM gatitos;
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
| nro | nombre   | apodo      | edad | aniosQueFaltan | peso | conDieta | color            | colorOjos        | llegoCon    | legusta                    |
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
|   1 | Rocket   | no tiene   |    3 |              8 |  3.0 |        0 | Blanco           | Celeste          | Sunny       | Dormir mucho               |
|   2 | Pinto    | Pin        |    5 |              6 |  3.5 |        0 | Naranja y Blanco | Amarillo y Verde | vino solito | Mimos                      |
|   3 | Sunny    | no tiene   |    2 |              9 |  5.0 |        1 | Negro            | Amarillento      | vino solito | Jugar con Pelotitas        |
|   4 | Emelia   | Emeli      |    5 |              6 |  4.4 |        1 | Gris y Negro     | Amarillentos     | Seiko       | Reposar al Sol             |
|   5 | Nikki    | no tiene   |    4 |              7 |  4.3 |        1 | Gris             | Verde claro      | vino solito | Estar con Ricochet         |
|   6 | Ricochet | no tiene   |    4 |              7 |  4.7 |        1 | Blanco y Gris    | Celestes         | vino solito | Lugares Altos              |
|   7 | Onyx     | no tiene   |    7 |              4 |  3.3 |        0 | Naranja Marron   | Amarillentos     | vino solito | Ir dónde hay comida        |
|   8 | Seiko    | no tiene   |    2 |              9 |  3.7 |        0 | Blanco y Gris    | Verdosos         | vino solito | Dormir junto a otros gatos |
|   9 | Nathan   | Ninja nate |    7 |              4 |  4.5 |        1 | Negro            | Amarillentos     | vino solito | Esconderse                 |
|  10 | Blue     | no tiene   |    4 |              7 |  3.5 |        0 | Azul             | Amarillo         | vino solito | Comer                      |
|  11 | Browni   | Bini       |    3 |              8 |  4.5 |        1 | Marron           | Verde            | vino solito | Salir a pasear             |
|  12 | Toffee   | Tofisito   |    4 |              7 |  3.4 |        0 | Blanco y Gris    | Verdosos         | vino solito | Jugar y estar solo a veces |
|  13 | Chucky   | no tiene   |   10 |              1 |  4.3 |        1 | Naranja y Blanco | Amarillentos     | vino solito | Dormir y caminar           |
|  14 | Michi    | no tiene   |    6 |              5 |  5.2 |        1 | Gris Oscuro      | Negros           | vino solito | Estar echado todo el día   |
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
/* Para cerrar agrego un registro Nro 15 con un gatito que tiene Apodo, llego con Michi y no tiene que hacer dieta */
INSERT INTO gatitos (nombre, apodo, edad, peso, color, colorOjos, llegoCon, legusta) VALUES 
                                    ("Blacky", "Negro", 3, 3.2, "Negro Azabache", "Amarillos", "Michi", "Estar Michi todo el tiempo");
SELECT * FROM gatitos;
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
| nro | nombre   | apodo      | edad | aniosQueFaltan | peso | conDieta | color            | colorOjos        | llegoCon    | legusta                    |
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
|   1 | Rocket   | no tiene   |    3 |              8 |  3.0 |        0 | Blanco           | Celeste          | Sunny       | Dormir mucho               |
|   2 | Pinto    | Pin        |    5 |              6 |  3.5 |        0 | Naranja y Blanco | Amarillo y Verde | vino solito | Mimos                      |
|   3 | Sunny    | no tiene   |    2 |              9 |  5.0 |        1 | Negro            | Amarillento      | vino solito | Jugar con Pelotitas        |
|   4 | Emelia   | Emeli      |    5 |              6 |  4.4 |        1 | Gris y Negro     | Amarillentos     | Seiko       | Reposar al Sol             |
|   5 | Nikki    | no tiene   |    4 |              7 |  4.3 |        1 | Gris             | Verde claro      | vino solito | Estar con Ricochet         |
|   6 | Ricochet | no tiene   |    4 |              7 |  4.7 |        1 | Blanco y Gris    | Celestes         | vino solito | Lugares Altos              |
|   7 | Onyx     | no tiene   |    7 |              4 |  3.3 |        0 | Naranja Marron   | Amarillentos     | vino solito | Ir dónde hay comida        |
|   8 | Seiko    | no tiene   |    2 |              9 |  3.7 |        0 | Blanco y Gris    | Verdosos         | vino solito | Dormir junto a otros gatos |
|   9 | Nathan   | Ninja nate |    7 |              4 |  4.5 |        1 | Negro            | Amarillentos     | vino solito | Esconderse                 |
|  10 | Blue     | no tiene   |    4 |              7 |  3.5 |        0 | Azul             | Amarillo         | vino solito | Comer                      |
|  11 | Browni   | Bini       |    3 |              8 |  4.5 |        1 | Marron           | Verde            | vino solito | Salir a pasear             |
|  12 | Toffee   | Tofisito   |    4 |              7 |  3.4 |        0 | Blanco y Gris    | Verdosos         | vino solito | Jugar y estar solo a veces |
|  13 | Chucky   | no tiene   |   10 |              1 |  4.3 |        1 | Naranja y Blanco | Amarillentos     | vino solito | Dormir y caminar           |
|  14 | Michi    | no tiene   |    6 |              5 |  5.2 |        1 | Gris Oscuro      | Negros           | vino solito | Estar echado todo el día   |
|  15 | Blacky   | Negro      |    3 |              8 |  3.2 |        0 | Negro Azabache   | Amarillos        | Michi       | Estar Michi todo el tiempo |
+-----+----------+------------+------+----------------+------+----------+------------------+------------------+-------------+----------------------------+
/* Ahora sí  
               ¡¡¡  F I N  !!!       */