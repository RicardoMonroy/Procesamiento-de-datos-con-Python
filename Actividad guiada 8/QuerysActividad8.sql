use empleados;
select * from puestos;
select * from lideres;
select * from departamentos;
select * from empleados;

describe empleados;

/* Lista todos los empleados con los nombres de sus puestos */
select e.nombre as Empleado, p.puesto as Puesto
from empleados.empleados e
join empleados.puestos p on e.puestos_idpuestos = p.idpuestos;

/* Lista tpodos los empleados con los nombres de sus líderes */
select e.nombre as Empleado, l.nombre as NombreLider
from empleados.empleados e
join empleados.lideres l on e.lideres_idlideres = l.idlideres;

/* Listar empleados y fecahs de ingreso con los nombres de puesto y departamentos */
select e.nombre as Empleado, fecha_ingreso as Ingreso, p.puesto as Puesto, d.departamento as Departamento
from empleados.empleados e
join empleados.puestos p on e.puestos_idpuestos = p.idpuestos
join empleados.departamentos d on e.departamentos_iddepartamentos = d.iddepartamentos;

/* Lista completa, osea empleados con sus puestos, departamentos y líderes */
select e.nombre as Empleado, sueldo as Sueldo, fecha_ingreso as Ingreso, p.puesto as Puesto, d.departamento as Departamento, l.nombre as Lider
from empleados.empleados e
join empleados.puestos p on e.puestos_idpuestos = p.idpuestos
join empleados.departamentos d on e.departamentos_iddepartamentos = d.iddepartamentos
join empleados.lideres l on e.lideres_idlideres = l.idlideres;