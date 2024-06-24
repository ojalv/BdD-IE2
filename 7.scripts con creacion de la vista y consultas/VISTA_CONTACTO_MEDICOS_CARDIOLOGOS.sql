CREATE
OR REPLACE VIEW CONTACTO_MEDICOS_CARDIOLOGOS AS
SELECT
    CONCAT(nombre, " ", apellidos) as nombre,
    email,
    telefono
FROM
    MEDICO
WHERE
    especialidad = "cardiologo";
    
select * FROM CONTACTO_MEDICOS_CARDIOLOGOS;