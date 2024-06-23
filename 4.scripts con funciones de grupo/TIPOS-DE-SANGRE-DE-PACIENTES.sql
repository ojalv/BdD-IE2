/*para hacer esta consulta primero deben ejecutarse los siguientes scripts en el orden indicado
1) 1.scripts de creacion de base de datos/ALTER-TABLE-HC.sql
2) 2.scripts con todos los insert a las tablas/UPDATE-HC.sql*/

select tipo_sangre as "tipo de sangre", COUNT(id_historia_clinica) as pacientes
from HISTORIA_CLINICA
group by tipo_sangre
order by tipo_sangre desc
