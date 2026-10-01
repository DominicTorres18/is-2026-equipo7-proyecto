# CarpintIA - Sistema Web de Cotización Automática para Carpintería

> **Sistema web adaptativo con integración de Inteligencia Artificial para la interpretación de requerimientos y generación de presupuestos automatizados en el sector carpintero.**

---

## 1. Definición del Problema Real

En el sector de la carpintería artesanal y de pequeños talleres, la elaboración de presupuestos es un proceso manual, lento y propenso a errores. Los carpinteros suelen invertir horas calculando volúmenes de madera, cantidad de herrajes, costos de barniz, desperdicio de material y mano de obra para cada propuesta. Esta falta de estandarización provoca cotizaciones imprecisas que a menudo resultan en pérdidas económicas para el taller o en demoras que desaniman a los clientes potenciales.

Por otro lado, existe una brecha de comunicación entre el cliente final y el maestro carpintero: los clientes no conocen la terminología técnica ni la estructura necesaria para solicitar un mueble a medida. La ausencia de un canal digital ágil que traduce las ideas del cliente en especificaciones operativas genera malentendidos en los requerimientos del proyecto y retrasa la conversión de consultas informales en ventas cerradas.

---

## 2. Objetivos del Sistema

### Objetivo General
Desarrollar un sistema web accesible y dinámico que automatice la generación de presupuestos para talleres de carpintería mediante la integración de una API de Inteligencia Artificial para la extracción parametrizada de datos a partir de lenguaje natural.

### Objetivos Específicos
1. **Captura / Procesamiento de datos:** Implementar un módulo de recepción de requerimientos en lenguaje natural y convertirlo en una estructura de datos normalizada (JSON) que alimente el motor de cálculo de insumos, materiales y tiempos de producción.
2. **Analítica / Inteligencia de datos:** Integrar un modelo de lenguaje (LLM) capaz de interpretar descripciones de muebles, inferir dimensiones faltantes orientativas y procesar variables de materiales (pino, encino, mdf, acabados) para alimentar la lógica de precios del negocio.
3. **Interfaz de usuario y reportería:** Diseñar una interfaz web intuitiva y adaptada a dispositivos móviles (*mobile-first*) que genere reportes en formato PDF con el desglose detallado de la cotización tanto para el cliente final como para el taller.

---

## 3. Actores del Sistema (Usuarios)

| Actor | Rol y Responsabilidad | Perfil Técnico | Nivel de Acceso |
| :--- | :--- | :--- | :--- |
| **Administrador**<br>*(Dueño del Taller / Carpintero)* | Gestión del catálogo de materiales, actualización de precios de insumos, ajuste de márgenes de ganancia y administración de usuarios. | Medio | `Full` |
| **Operador / Analista**<br>*(Auxiliar de Taller)* | Revisión de cotizaciones generadas por la IA, ajuste manual de parámetros técnicos y aprobación de presupuestos finales. | Medio | `Read/Write` |
| **Cliente / Usuario Final** | Solicitud de cotizaciones mediante descripciones en texto, consulta de propuestas y descarga de presupuestos. | Básico | `Read Only` |

---

## 4. Alcance y Límites del Proyecto

###  Incluye
*  Interfaz web *responsive* optimizada para dispositivos móviles y escritorio.
*  Módulo de solicitud de cotización por texto procesado mediante API de Inteligencia Artificial (*Function Calling* / JSON estructurado).
*  Motor de cálculo interno para conversión de dimensiones y materiales en costos de fabricación.
*  Panel de administración para actualizar catálogo de maderas, herrajes y precio por hora de trabajo.
*  Exportación del presupuesto final generado a formato PDF.

### No Incluye
*  Procesamiento de pagos en línea o pasarelas de pago (Stripe, PayPal, etc.).
*  Procesamiento de imágenes mediante Visión por Computadora (análisis de fotos o bocetos).
*  Aplicación móvil nativa compilada para tiendas App Store o Google Play.
*  Integración con sistemas ERP de inventario en tiempo real de proveedores externos.
*  Módulo de diseño 3D o renderizado automático del mueble.