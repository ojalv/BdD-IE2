select tipo_sangre as "tipo de sangre", COUNT(id_historia_clinica) as pacientes
from HISTORIA_CLINICA
group by tipo_sangre
order by tipo_sangre desc
