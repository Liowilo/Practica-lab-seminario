# Esquema Relacional - Agencia de Viajes de Negocios

## Tablas
- EMPRESA (id_empresa [PK], rfc, razon_social, direccion)
- EMPLEADO (id_empleado [PK], nombre, puesto, id_empresa [FK -> EMPRESA.id_empresa])
- RESERVACION (id_reservacion [PK], fecha_creacion, estado, id_empresa [FK -> EMPRESA.id_empresa])
- SERVICIO_VIAJE (id_servicio [PK], tipo_servicio, proveedor, costo_base)
- DETALLE_RESERVACION (id_detalle [PK], id_reservacion [FK -> RESERVACION.id_reservacion], id_servicio [FK -> SERVICIO_VIAJE.id_servicio], id_empleado [FK -> EMPLEADO.id_empleado], fecha_servicio, costo_pactado)
