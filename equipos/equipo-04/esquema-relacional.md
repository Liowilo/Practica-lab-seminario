# Equipo 04 — Esquema relacional del proyecto

**Dominio de negocio:** Cine

**Integrantes:**
-Bribiesca Bernal Kevin Axel
-Garcia Garcia David Emanuel
-Rico Calzadilla Rodrigo

**Enlace al diagrama E/R del jueves 17** (https://dbdiagram.io/d/6aac1c78b73118d200b0a46d ):

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
|`BOLETO.id_cliente` | Permite registrar ventas de boletos en taquilla física a clientes generales o anónimos que no cuentan con un perfil o registro previo en el sistema de la base de datos (compras rápidas en efectivo o ventas de última hora). |

## 5. Cambios respecto del E/R del jueves
* **Creación de llave artificial:** Se decidió utilizar `id_boleto` como clave primaria artificial en la tabla de asociación `BOLETO`, lo que facilita el manejo independiente de cada entrada adquirida.
* **Participación opcional (Nullable FK):** Al pasar al esquema relacional, se ajustó el campo `id_cliente` en la tabla `BOLETO` para que acepte valores `NULL`, permitiendo modelar las compras de taquilla para clientes no registrados (público general).
<!-- Al pasar a tablas casi siempre aparece algo que el E/R no dejaba ver.
     Si cambiaron algo del diagrama, díganlo aquí. Si no cambiaron nada, escriban "Ninguno". -->

-
