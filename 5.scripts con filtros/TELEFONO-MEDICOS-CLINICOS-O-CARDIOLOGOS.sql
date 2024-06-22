select concat(nombre," ",apellidos) as medico, telefono
from MEDICO
where especialidad = 'Clinico' or especialidad = 'Cardiologo';