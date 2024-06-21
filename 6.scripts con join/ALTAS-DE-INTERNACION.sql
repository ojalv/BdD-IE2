select
    concat(M.nombre, " ", M.apellidos) AS "Medico responsable",
    concat(P.nombre, " ", P.apellidos) AS "Paciente",
    I.fecha_alta "alta"
from
    INTERNACION AS I
    join HISTORIA_CLINICA AS HC ON I.fk_id_historia_clinica = HC.id_historia_clinica
    join PACIENTE AS P ON P.dni = HC.fk_dni_paciente
    join MEDICO AS M ON M.dni = I.fk_dni_medico_ingreso