SELECT 
    YEAR(fecha_ingreso) AS anio, 
    MONTH(fecha_ingreso) AS mes, 
    COUNT(*) AS "ingresos"
FROM 
    INTERNACION
GROUP BY 
    YEAR(fecha_ingreso), 
    MONTH(fecha_ingreso)
ORDER BY 
    YEAR(fecha_ingreso), 
    MONTH(fecha_ingreso);