-- INNER JOIN --
SELECT e.Nombre, d.Nombre as "Nombre de departamento"
FROM departamentos d
INNER JOIN empleados e 
ON d.Id = e.DepartamentoId;

-- LEFT JOIN --
SELECT e.Nombre, d.Nombre as "Nombre de departamento"
FROM departamentos d
LEFT JOIN empleados e
ON d.Id = e.DepartamentoId;

-- RIGHT JOIN --
SELECT e.Nombre, d.Nombre as "Nombre de departamento"
FROM departamentos d
RIGHT JOIN empleados e
ON d.Id = e.DepartamentoId;

-- FULL  --
SELECT empleados.Nombre, departamentos.Nombre as "Nombre de departamento"
FROM departamentos 
FULL JOIN empleados 
ON departamentos.Id = empleados.DepartamentoId;

-- nombres de empleado, id de depto y el número de empleados de cada depto --
SELECT id, departamentos.Nombre AS "Nombre de Depto" , COUNT(departamentos.Nombre) as "Número de Deptos"
FROM departamentos
INNER JOIN empleados
ON empleados.DepartamentoId = departamentos.id
GROUP BY Id;