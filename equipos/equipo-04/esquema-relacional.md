# Equipo 04 — Esquema relacional del proyecto

**Dominio de negocio:**

**Integrantes:**
-Bribiesca Bernal Kevin Axel
-Garcia Garcia David Emanuel
-Rico Calzadilla Rodrigo

**Enlace al diagrama E/R del jueves 17** (dbdiagram.io, Mermaid o archivo en el repositorio del proyecto):

---

## 1. Esquema relacional

PELICULA(**id_pelicula**, titulo, duracion, clasificacion)
SALA(**num_sala**, capacidad, tipo_pantalla)
FUNCION(**id_funcion**, fecha, hora, num_sala → SALA, id_pelicula → PELICULA)
CLIENTE(**id_cliente**, nombre, correo UNIQUE)
BOLETO(**id_boleto**, id_funcion → FUNCION, id_cliente → CLIENTE?, asiento, precio)

## 2. Relaciones N:M y cómo las resolvieron

| Relación en el E/R | Tabla intermedia | Llave primaria de la tabla intermedia | ¿Se puede repetir la misma pareja? ¿Por qué? |
|---|---|---|---|
| CLIENTE y FUNCION | BOLETO | **id_boleto** (artificial) | Sí. Un mismo cliente puede comprar varios boletos para la misma función (por ejemplo, si va con su familia y compra 4 entradas). Como usamos un `id_boleto` artificial, la pareja `(id_cliente, id_funcion)` se puede repetir sin causar error de llave duplicada. |

## 3. Relaciones 1:1, recursivas, débiles y multivaluados

<!-- Si su E/R no tiene alguno de estos casos, escriban "No aplica". -->

| Caso | Dónde aparece en su E/R | Cómo lo resolvieron |
|---|---|---|
| Relación 1:1 | | |
| Relación recursiva | | |
| Entidad débil | | |
| Atributo multivaluado | | |

## 4. Llaves foráneas que admiten NULL

<!-- Toda FK con ? necesita una razón de negocio. -->

| Tabla.columna | Por qué puede quedar vacía |
|---|---|
| | |

## 5. Cambios respecto del E/R del jueves

<!-- Al pasar a tablas casi siempre aparece algo que el E/R no dejaba ver.
     Si cambiaron algo del diagrama, díganlo aquí. Si no cambiaron nada, escriban "Ninguno". -->

-
