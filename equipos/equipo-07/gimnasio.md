# Equipo 07 — Caso Gimnasio

**Integrantes:**
-Natalia Godinez Alavez 
-Paulina Monserrat Meraz Alcantara
-Jesus Diaz Hernandez 

## Esquema relacional

<!-- Usen la notación de guias/notacion.md. Una tabla por renglón. -->

```
MEMBRESIA(**id_membresia**, tipo, costo_mensual, duracion_meses, descripcion?, activa)

SOCIO(**num_socio**, nombre, apellidos, fecha_nacimiento, correo, telefono, id_membresia → MEMBRESIA, fecha_registro)

PAGO(**id_pago**, num_socio → SOCIO, id_membresia → MEMBRESIA, fecha_pago, monto, metodo_pago, estatus_pago, referencia_pago?)

INSTRUCTOR(**num_empleado**, nombre, apellidos, especialidad, telefono, correo, fecha_contratacion)
## Diagrama (opcional)

<!-- Si quieren, dibujen aquí el esquema en Mermaid. -->
