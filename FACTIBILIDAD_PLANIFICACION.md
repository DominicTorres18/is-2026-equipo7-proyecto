# Estudio de Factibilidad y Planificación del Proyecto

## 1. Análisis de Factibilidad Multidimensional

- **Factibilidad Técnica:**
  - **Lenguajes y Frameworks:** Se utiliza una arquitectura moderna basada en **Python** para el procesamiento de lógica de backend/integración y **JavaScript/TypeScript** con **Vue 3 y Vuetify** en el frontend, garantizando una interfaz responsiva, ligera e interactiva.
  - **Base de Datos:** Implementación de **SQL Server / PostgreSQL** para el almacenamiento relacional estructurado de usuarios, presupuestos, catálogo de materiales y registros de cotizaciones.
  - **Herramientas de IA y Datos:** Integración con la **API de Gemini** para el Procesamiento de Lenguaje Natural (PLN), permitiendo interpretar descripciones verbales de piezas de carpintería y traducirlas en estimaciones precisas de dimensiones, herrajes y materiales.
  - **Evaluación:** El equipo cuenta con las competencias técnicas requeridas en desarrollo web, SQL e integración de APIs rest, por lo que la factibilidad técnica es alta.

- **Factibilidad Económica:**
  - **Infraestructura Cloud:** Se contempla el uso de niveles gratuitos (Free Tier) o de bajo costo para el hospedaje del backend y frontend (ej. Render, Vercel o Supabase).
  - **Consumo de APIs:** Uso del plan de desarrollo/cuota gratuita de la API de Gemini para la fase de prototipo y pruebas de la Unidad 2 y 3.
  - **Horas-Hombre del Equipo:** Estimación de esfuerzo cubierta por el equipo de desarrollo estudiantil durante las semanas lectivas de la asignatura.
  - **Evaluación:** El proyecto no requiere inversión de capital inicial significativa, siendo completamente viable económicamente.

- **Factibilidad Operativa:**
  - **Grado de Adopción:** Diseñado específicamente para talleres de carpintería y artesanos, reduciendo la curva de aprendizaje mediante una interfaz intuitiva y entrada en lenguaje natural.
  - **Cumplimiento Legal (LFPDPPP):** Apego a la Ley Federal de Protección de Datos Personales en Posesión de los Particulares mediante el tratamiento confidencial de la información de los clientes y cotizaciones.
  - **Mitigación de Resistencia al Cambio:** Automatización paulatina del cálculo manual de presupuestos, demostrando la reducción de tiempo en la generación de cotizaciones.

---

## 2. Cronograma de Trabajo y Diagrama de Gantt (Sintaxis Mermaid)

```mermaid
gantt
title Cronograma de Desarrollo - Proyecto Final Integrador
dateFormat YYYY-MM-DD
section Unidad 2: Análisis y Diseño
Estudio de Factibilidad & SRS :a1, 2026-10-14, 7d
Modelado UML Comportamiento :a2, 2026-10-21, 7d
Modelado Estructural & BD :a3, 2026-10-28, 7d
section Unidad 3: Construcción & Pruebas
Desarrollo Backend/Frontend :b1, 2026-11-04, 14d
Pruebas & Despliegue :b2, 2026-11-18, 7d