# Reporte Técnico de Selección y Justificación Metodológica
**Asignatura:** Ingeniería de Software | **Unidad 1:** Cierre Sumativo
**Proyecto Final:** CarpintIA
**Equipo de Desarrollo:** Equipo CarpintIA (Dominic Torres Juarez y Pavel) | **Fecha:** 24/10/2026
---

## 1. Caracterización del Sistema y Entorno de Proyecto
- **Ámbito de Dominio:** Inteligencia Artificial, Procesamiento de Lenguaje Natural y Desarrollo Web.
- **Problema Principal a Resolver:** Las carpinterías y talleres artesanales enfrentan tiempos prolongados y errores frecuentes al calcular presupuestos, costos de materiales y cotizaciones a partir de solicitudes verbales o escritas de los clientes.
- **Complejidad Técnica y Criticidad:** Alta dependencia de la integración externa con la API de Gemini para la interpretación de lenguaje natural, manejo preciso de fórmulas aritméticas de costos de materiales, y necesidad de asegurar una interfaz responsiva y de baja latencia.
- **Perfil de Integrantes y Cliente:** Equipo conformado por estudiantes de Ingeniería en Datos e Inteligencia Artificial con competencias en desarrollo web y lógica de programación; el rol de Product Owner es asumido de manera colaborativa para alinear los requerimientos funcionales del sistema.

## 2. Evaluación Multicriterio de Alternativas Metodológicas
| Criterio de Evaluación | Enfoque Clásico (Cascada/Espiral) | Enfoque Ágil (Scrum/XP) | Enfoque Híbrido Propuesto |
|---|---|---|---|
| Gestión de Cambios | Alta rigidez ante modificaciones | Alta adaptabilidad e iteración | Permite flexibilidad controlada en hitos mayores, aunque ralentiza la entrega continua. |
| Documentación Exigida | Formal y exhaustiva por etapa | Mínima suficiente (Historias) | Equilibra especificaciones formales iniciales con la agilidad de los backlogs vivos. |
| Participación del Cliente | Puntos fijos de revisión | Continua por Sprint | Validación periódica pero sujeta a la aprobación de fases cerradas. |
| Velocidad de Entrega | Software al final del ciclo | Incrementos funcionales cortos | Entregas parciales en bloques estructurados de desarrollo. |

## 3. Justificación Fundada de la Metodología Seleccionada
- **Metodología Seleccionada:** Scrum adaptado con prácticas de XP (Extreme Programming).
- **Argumentación Técnica Fundamentada:** Tomando como referencia los principios de gestión ágil (como los postulados de Sommerville sobre adaptabilidad ante requerimientos evolutivos en proyectos de software basados en IA), se selecciona Scrum combinado con XP. Dado que CarpintIA integra llamadas a APIs externas (Gemini) y lógica de costos iterativa, un enfoque ágil permite gestionar el backlog por historias de usuario, realizar entregas funcionales por sprints cortos y mitigar riesgos técnicos de manera temprana mediante pruebas continuas y revisión de pares.

## 4. Definición del Proceso Adaptado y Artefactos
- **Fases o Ciclos del Proceso:** Sprints de 1 a 2 semanas estructurados bajo tableros de gestión (GitHub Projects), abarcando planeación, desarrollo, pruebas e integración continua.
- **Artefactos Obligatorios a Generar:** 
  - Especificación de Requisitos de Software (SRS).
  - Diagramas UML de arquitectura y flujo de datos.
  - Product Backlog y Sprint Backlog en GitHub.
  - Código fuente modular y versionado.
  - Manuales de usuario y despliegue.
- **Matriz de Responsabilidades de Equipo:** 
  - *Product Owner / Scrum Master:* Gestión de requerimientos y facilitación del flujo (Dominic Torres Juarez / Pavel).
  - *Development Team & QA:* Codificación de módulos, integración con API de Gemini, pruebas unitarias y validación de calidad (Dominic Torres Juarez y Pavel).

## 5. Compromiso de Calidad y Gobernanza de Código
- **Alineación con PARADIGMA.md y CALIDAD.md:** Suscripción estricta a las reglas de convenciones de commits en Git, uso de linters de código para mantener estándares limpios y métricas de mantenibilidad orientadas a la norma ISO/IEC 25010.
- **Mecanismos de Control de Cambios:** Revisión entre pares obligatoria mediante Pull Requests (PR) en GitHub, exigiendo aprobación cruzada antes de realizar merges a la rama principal (`main` / `develop`).