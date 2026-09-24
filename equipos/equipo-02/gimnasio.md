# Caso Gimnasio - Esquema Relacional

## Tablas
- SOCIO (num_socio [PK], nombre, direccion, id_plan [FK -> PLAN.id_plan])
- TELEFONO_SOCIO (num_socio [FK -> SOCIO.num_socio], telefono, [PK: num_socio, telefono])
- PLAN (id_plan [PK], nombre_plan, costo, duracion_meses)
- LOCKER (num_locker [PK], ubicacion, num_socio [FK -> SOCIO.num_socio, UNIQUE, NULLABLE])
- EMPLEADO (id_empleado [PK], nombre, puesto, id_supervisor [FK -> EMPLEADO.id_empleado, NULLABLE])
- CLASE (id_clase [PK], nombre_clase, id_empleado [FK -> EMPLEADO.id_empleado])
- SESION (id_clase [FK -> CLASE.id_clase], numero_sesion, dia, hora, [PK: id_clase, numero_sesion])
- INSCRIPCION (num_socio [FK -> SOCIO.num_socio], id_clase [FK -> CLASE.id_clase], fecha_inscripcion, [PK: num_socio, id_clase, fecha_inscripcion])
