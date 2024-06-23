/*Para ejecutar esta sentencia primero debe ejecutarse el script: 1.scripts de creacion de base de datos/ALTER-TABLE-HC.sql*/
UPDATE
    HISTORIA_CLINICA
SET
    tipo_sangre = "-AB",
    alergias = "polen"
WHERE
    id_historia_clinica = 1;

UPDATE
    HISTORIA_CLINICA
SET
    tipo_sangre = "+AB",
    alergias = "abejas"
WHERE
    id_historia_clinica = 2;

UPDATE
    HISTORIA_CLINICA
SET
    tipo_sangre = "+0",
    alergias = "decadron"
WHERE
    id_historia_clinica = 3;

UPDATE
    HISTORIA_CLINICA
SET
    tipo_sangre = "+0",
    alergias = "polen, abejas, mani"
WHERE
    id_historia_clinica = 4;

UPDATE
    HISTORIA_CLINICA
SET
    tipo_sangre = "-0"
WHERE
    id_historia_clinica = 5;

UPDATE
    HISTORIA_CLINICA
SET
    tipo_sangre = "+0",
    alergias = "mani"
WHERE
    id_historia_clinica = 6;

UPDATE
    HISTORIA_CLINICA
SET
    tipo_sangre = "-A",
    alergias = "mani"
WHERE
    id_historia_clinica = 7;

UPDATE
    HISTORIA_CLINICA
SET
    tipo_sangre = "+B",
    alergias = "decadron"
WHERE
    id_historia_clinica = 8;

UPDATE
    HISTORIA_CLINICA
SET
    tipo_sangre = "-AB",
    alergias = "decadron"
WHERE
    id_historia_clinica = 9;

UPDATE
    HISTORIA_CLINICA
SET
    tipo_sangre = "-0",
    alergias = "latex"
WHERE
    id_historia_clinica = 10;