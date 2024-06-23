/*INSERTAMOS POR ERROR UN PACIENTE*/
INSERT INTO
    PACIENTE (
        dni,
        nombre,
        apellidos,
        direccion,
        ciudad,
        provincia,
        codigo_postal,
        telefono,
        email,
        sexo,
        fecha_nacimiento
    )
VALUES
    (
        10000123,
        'Esteban',
        'Perez',
        'Av. Siempre Viva 555',
        'Ciudad Autónoma de Buenos Aires',
        'Buenos Aires',
        1425,
        5487112225,
        'juan.perez@gmail.com',
        true,
        '1980-03-15'
    );

/*ENTONCES LO ELIMINAMOS DE LA BASE DE DATOS*/
DELETE FROM
    PACIENTE
WHERE
    dni = 10000123;