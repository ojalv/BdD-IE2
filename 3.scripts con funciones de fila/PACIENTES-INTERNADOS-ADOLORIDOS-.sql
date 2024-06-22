select fk_codigo_internacion as "id internacion", lower(observaciones) as observaciones, fecha, hora
from ATENCION_INTERNACION
where observaciones like ("%dolor%")