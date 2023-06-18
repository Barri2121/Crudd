
create database BD_Empleados

create table Empleado(
  IdEmpleado int primary key identity(1,1),
  DPI int ,
  Nombre_completo varchar(100),
  Hijos int,
  SalarioBase float,
  Bono float,
  IGSS float,
  IRTRA float,
  Bono_paternidad float,
  Salario_total float,
  Salario_liquido float
 )

 select*from Empleado