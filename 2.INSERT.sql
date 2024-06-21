/*INSERTAR REGISTROS DE PACIENTES EN TABLA PACIENTE*/
INSERT INTO
    PACIENTE (
        dni,
        nombre,
        apellidos,
        direccion,
        ciudad,
        provincia,
        codigo_postal,
        email,
        sexo,
        fecha_nacimiento
    )
VALUES
    (
        10000001,
        'Juan',
        'Perez',
        'Av. Siempre Viva 742',
        'Ciudad Autónoma de Buenos Aires',
        'Buenos Aires',
        1425,
        'juan.perez@gmail.com',
        true,
        '1980-03-15'
    ),
    (
        10000002,
        'Maria',
        'Gonzalez',
        'San Martin 1234',
        'Rosario',
        'Santa Fe',
        2000,
        'maria.gonzalez@gmail.com',
        false,
        '1975-07-22'
    ),
    (
        10000003,
        'Carlos',
        'Lopez',
        'Belgrano 567',
        'Mendoza',
        'Mendoza',
        5500,
        'carlos.lopez@gmail.com',
        true,
        '1990-11-11'
    ),
    (
        10000004,
        'Ana',
        'Martinez',
        'Rivadavia 890',
        'La Plata',
        'Buenos Aires',
        1900,
        'ana.martinez@gmail.com',
        false,
        '1985-05-05'
    ),
    (
        10000005,
        'Luis',
        'Fernandez',
        'Colon 123',
        'Mar del Plata',
        'Buenos Aires',
        7600,
        'luis.fernandez@gmail.com',
        true,
        '1970-08-30'
    ),
    (
        10000006,
        'Laura',
        'Garcia',
        'Mitre 456',
        'Tucumán',
        'Tucumán',
        4000,
        'laura.garcia@gmail.com',
        false,
        '1995-12-20'
    ),
    (
        10000007,
        'Jorge',
        'Diaz',
        'Sarmiento 789',
        'San Juan',
        'San Juan',
        5400,
        'jorge.diaz@gmail.com',
        true,
        '1983-02-18'
    ),
    (
        10000008,
        'Silvia',
        'Torres',
        'Saavedra 101',
        'Salta',
        'Salta',
        4400,
        'silvia.torres@gmail.com',
        false,
        '1978-09-10'
    ),
    (
        10000009,
        'Fernando',
        'Sanchez',
        'Belgrano 232',
        'Resistencia',
        'Chaco',
        3500,
        'fernando.sanchez@gmail.com',
        true,
        '1982-04-14'
    ),
    (
        10000010,
        'Patricia',
        'Ramirez',
        'Mitre 654',
        'Posadas',
        'Misiones',
        3300,
        'patricia.ramirez@gmail.com',
        false,
        '1971-06-25'
    );

/*INSERTAR REGISTROS DE HISTORIAS CLINICAS EN TABLA HISTORIA_CLINICA*/
INSERT INTO
    HISTORIA_CLINICA(fk_dni_paciente)
values
    (10000001),
    (10000002),
    (10000003),
    (10000004),
    (10000005),
    (10000006),
    (10000007),
    (10000008),
    (10000009),
    (10000010);

/*INSERT TABLA MEDICO*/
INSERT INTO
    MEDICO (
        dni,
        nombre,
        apellidos,
        telefono,
        email,
        matricula_medica,
        especialidad
    )
VALUES
    (
        12345789,
        'Juan',
        'Perez',
        3587894561,
        'juan@gmail.com',
        123456,
        'Clinico'
    ),
    (
        13456789,
        'Rene',
        'Favaloro',
        3584567896,
        'rene@gmail.com',
        234567,
        'Cardiologo'
    ),
    (
        23456789,
        'Freddy',
        'Krueger',
        3585648971,
        'freddy.ciruja@hotmail.com',
        345678,
        'Cirujano'
    ),
    (
        14258369,
        'Gabriel',
        'Rolon',
        1145627893,
        'rolon@yahoo.com',
        147896,
        'Psicologo'
    ),
    (
        15478632,
        'Piñon',
        'Fijo',
        1196835742,
        'piñon@gmail.com',
        987654,
        'Pediatra'
    );

/*INSERTAR REGISTROS DE INTERNACIONES EN TABLA INTERNACION*/
INSERT INTO
    INTERNACION(
        numero_habitacion,
        numero_cama,
        fecha_ingreso,
        fecha_alta,
        fk_id_historia_clinica,
        fk_dni_medico_ingreso
    )
VALUES
    (1, 1, "2024-06-20", "2024-06-20", 1, 12345789),
    (2, 3, "2024-05-30", "2024-06-01", 2, 13456789),
    (2, 3, "2024-05-23", "2024-05-27", 3, 23456789),
    (2, 4, "2024-05-23", "2024-05-28", 4, 14258369),
    (3, 1, "2024-05-15", "2024-05-18", 5, 15478632),
    (1, 1, "2024-05-13", "2024-05-14", 6, 15478632),
    (1, 2, "2024-05-13", "2024-05-14", 7, 15478632),
    (1, 3, "2024-05-13", "2024-05-14", 8, 15478632),
    (2, 2, "2024-05-05", "2024-05-06", 9, 13456789),
    (2, 3, "2024-05-05", "2024-05-06", 10, 13456789);

/*INSERTAR REGISTROS DE ATENCIONES DE INTERNACION EN TABLA ATENCION_INTERNACION*/
INSERT INTO
    ATENCION_INTERNACION (
        fecha,
        hora,
        observaciones,
        fk_codigo_internacion,
        fk_dni_medico_atencion
    )
VALUES
    (
        '2024-06-20',
        '10:30:00',
        'Control post-operatorio',
        1,
        13456789
    ),
    (
        '2024-06-20',
        '15:45:00',
        'Consulta de seguimiento',
        1,
        12345789
    ),
    (
        '2024-06-20',
        '11:00:00',
        'Examen cardiológico',
        1,
        13456789
    ),
    (
        '2024-05-30',
        '19:50:00',
        'Presión arterial alta, controlar con medicación',
        2,
        23456789
    ),
    (
        '2024-05-23',
        '14:20:00',
        'Paciente presenta fiebre de origen desconocido, realizar cultivos',
        3,
        12345789
    ),
    (
        '2024-05-23',
        '18:15:00',
        'Resultados de análisis de sangre muestran deficiencia de hierro, prescribir suplementos',
        3,
        23456789
    ),
    (
        '2024-05-23',
        '15:00:00',
        'Fractura de muñeca derecha, inmovilización con férula',
        4,
        23456789
    ),
    (
        '2024-05-15',
        '10:30:00',
        'Reacción alérgica severa a picadura de insecto, administrar epinefrina',
        5,
        13456789
    ),
    (
        '2024-05-15',
        '15:45:00',
        'Dolor abdominal agudo, solicitar ecografía abdominal urgente',
        5,
        12345789
    ),
    (
        '2024-05-15',
        '16:00:00',
        'Paciente con antecedentes de diabetes tipo 2, ajustar dosis de insulina',
        5,
        13456789
    ),
    (
        '2024-05-15',
        '10:30:00',
        'Síntomas de intoxicación alimentaria, tratamiento sintomático con hidratación intravenosa',
        6,
        14258369
    ),
    (
        '2024-05-15',
        '15:45:00',
        'Consulta de seguimiento',
        6,
        15478632
    ),
    (
        '2024-05-15',
        '11:00:00',
        'Evaluación post-operatoria de apendicectomía, incisión quirúrgica sin complicaciones',
        7,
        14258369
    ),
    (
        '2024-05-15',
        '10:30:00',
        'Lesión por deporte, recomendar reposo y fisioterapia',
        8,
        23456789
    ),
    (
        '2024-05-15',
        '15:45:00',
        'Consulta de seguimiento',
        8,
        15478632
    ),
    (
        '2024-05-15',
        '22:00:00',
        'Paciente con dolor de cabeza recurrente, realizar resonancia magnética',
        8,
        14258369
    ),
    (
        '2024-05-15',
        '10:30:00',
        'Paciente con historial de migrañas, prescribir tratamiento preventivo.
',
        9,
        13456789
    ),
    (
        '2024-05-15',
        '15:45:00',
        'Infección respiratoria, iniciar antibióticos de amplio espectro.',
        9,
        15478632
    ),
    (
        '2024-05-15',
        '11:00:00',
        'Observación de nódulo en la mama izquierda, realizar biopsia para diagnóstico.',
        10,
        13456789
    );