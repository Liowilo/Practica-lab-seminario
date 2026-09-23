# Equipo 04 — Caso Gimnasio

**Integrantes:**
-Bribiesca Bernal Kevin Axel
-Garcia Gracia David Emanuel 
-Rico Calzadilla Rodrigo

## Esquema relacional

<!-- Usen la notación de guias/notacion.md. Una tabla por renglón. -->

PLAN(**id_plan**, nombre, costo_mensual)
SOCIO(**num_socio**, nombre, fecha_nacimiento, correo, id_plan → PLAN)
SOCIO_TELEFONO(**num_socio** → SOCIO, **telefono**)
LOCKER(**num_locker**, ubicacion, num_socio? UNIQUE → SOCIO)
INSTRUCTOR(**num_empleado**, nombre, especialidad, num_empleado_supervisor? → INSTRUCTOR)
CLASE(**id_clase**, nombre, cupo_max, num_empleado → INSTRUCTOR)
SESION(**id_clase** → CLASE, **numero_sesion**, fecha, hora_inicio, salon)
INSCRIPCION(**num_socio** → SOCIO, **id_clase** → CLASE, **fecha_inscripcion**, estatus)

## Diagrama (opcional)

```mermaid
erDiagram
    PLAN ||--|{ SOCIO : "contrata"
    SOCIO ||--|{ SOCIO_TELEFONO : "tiene"
    SOCIO |o--o| LOCKER : "renta"
    INSTRUCTOR |o--|{ INSTRUCTOR : "supervisa"
    INSTRUCTOR ||--|{ CLASE : "imparte"
    CLASE ||--|{ SESION : "se divide en"
    SOCIO ||--|{ INSCRIPCION : "realiza"
    CLASE ||--|{ INSCRIPCION : "recibe"

    PLAN {
        int id_plan PK
        string nombre
        decimal costo_mensual
    }

    SOCIO {
        int num_socio PK
        string nombre
        date fecha_nacimiento
        string correo
        int id_plan FK
    }

    SOCIO_TELEFONO {
        int num_socio PK, FK
        string telefono PK
    }

    LOCKER {
        int num_locker PK
        string ubicacion
        int num_socio FK "UNIQUE, nullable"
    }

    INSTRUCTOR {
        int num_empleado PK
        string nombre
        string especialidad
        int num_empleado_supervisor FK "nullable"
    }

    CLASE {
        int id_clase PK
        string nombre
        int cupo_max
        int num_empleado FK
    }

    SESION {
        int id_clase PK, FK
        int numero_sesion PK
        date fecha
        time hora_inicio
        string salon
    }

    INSCRIPCION {
        int num_socio PK, FK
        int id_clase PK, FK
        date fecha_inscripcion PK
        string estatus
    }
```