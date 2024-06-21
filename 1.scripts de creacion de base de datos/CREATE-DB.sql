/*Crea la base de datos*/
create database INTERNACIONES;

use INTERNACIONES;

/*Crea la tabla PACIENTE*/
create table PACIENTE (
    dni int unique not null primary key,
    nombre varchar(45),
    apellidos varchar(45),
    direccion varchar(45),
    ciudad varchar(45),
    provincia varchar(45),
    telefono int,
    codigo_postal int,
    email varchar(45),
    sexo tinyint,
    fecha_nacimiento date
);

/*Crea la tabla MEDICO*/
create table MEDICO (
    dni int unique not null primary key,
    nombre varchar(45),
    apellidos varchar(45),
    telefono int,
    email varchar(45),
    matricula_medica int unique not null,
    especialidad varchar(45)
);

/*Crea la tabla HISTORIA_CLINICA*/
create table HISTORIA_CLINICA (
    id_historia_clinica int not null auto_increment primary key,
    fk_dni_paciente int not null unique,
    constraint fk_dni_paciente foreign key (fk_dni_paciente) references PACIENTE (dni)
);

/*Crea la tabla INTERNACION*/
create table INTERNACION (
    codigo_internacion int not null auto_increment primary key,
    numero_habitacion int,
    numero_cama int,
    fecha_ingreso date,
    fecha_alta date,
    fk_id_historia_clinica int,
    constraint fk_id_historia_clinica foreign key (fk_id_historia_clinica) references HISTORIA_CLINICA (id_historia_clinica),
    fk_dni_medico_ingreso int,
    constraint fk_dni_medico_ingreso foreign key (fk_dni_medico_ingreso) references MEDICO (dni)
);

/*Crea la tabla ATENCION_INTERNACION*/
create table ATENCION_INTERNACION (
    id_atencion_internacion int not null auto_increment primary key,
    fecha date,
    hora time,
    observaciones varchar(200),
    fk_codigo_internacion int not null,
    constraint fk_codigo_internacion foreign key (fk_codigo_internacion) references INTERNACION (codigo_internacion),
    fk_dni_medico_atencion int not null,
    constraint fk_dni_medico_atencion foreign key (fk_dni_medico_atencion) references MEDICO (dni)
);

/*Crea la tabla CONSULTA_MEDICA*/
create table CONSULTA_MEDICA (
    id_consulta int not null primary key auto_increment,
    fecha date,
    motivo_consulta varchar(200),
    diagnostico varchar(200),
    tratamiento varchar(200),
    fecha_actualizacion date,
    fk_id_historia_clinica int,
    constraint CONSULTA_MEDICA_fk_id_historia_clinica foreign key (fk_id_historia_clinica) references HISTORIA_CLINICA (id_historia_clinica),
    fk_dni_medico int,
    constraint CONSULTA_MEDICA_fk_dni_medico foreign key (fk_dni_medico) references MEDICO (dni)
);