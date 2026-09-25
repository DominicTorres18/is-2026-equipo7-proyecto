# ANÁLISIS DEL CICLO DE VIDA

## 1. Mapeo de Fases Clásicas (Modelo Incremental)

### 1. Requerimientos y Análisis
* **Entregables producidos:** 
  * Documento de Especificación de Requerimientos del Sistema (SRS).
  * Catálogo de historias de usuario en el Backlog del proyecto.
  * Definición del esquema JSON para las llamadas a la API de IA (*Function Calling*).
  * Matriz de costos base de insumos y fórmulas de cálculo para carpintería.

### 2. Diseño de Arquitectura y Base de Datos
* **Módulos a diseñar:**
  * **Módulo Frontend:** Interfaz web *responsive* (*mobile-first*) para captura de solicitudes y visualización de cotizaciones.
  * **Módulo de Integración con IA:** Servicio encargado de conectar con la API de IA (Gemini/OpenAI) y parsear respuestas a objetos estructurados.
  * **Motor de Cálculo de Precios:** Módulo backend que procesa parámetros (dimensiones, tipo de madera, mano de obra) y aplica las fórmulas matemáticas de costos.
  * **Módulo de Reportería:** Generador de documentos PDF para la entrega final al cliente.
  * **Base de Datos Relacional:** Esquema para la gestión de usuarios, catálogo de maderas/herrajes, historial de cotizaciones y márgenes de ganancia.

### 3. Implementación / Codificación
* **Lenguajes y Frameworks:**
  * **Frontend:** Vue.js / TypeScript con Tailwind CSS para la interfaz de usuario.
  * **Backend:** C# (.NET Core) o Python (FastAPI/Flask) para la lógica de negocio y APIs REST.
  * **Base de Datos:** SQL Server o PostgreSQL para el almacenamiento relacional.
  * **Integración de IA:** SDK oficial de la API de IA para manejo de *prompts* y respuestas estructuradas en JSON.

### 4. Pruebas y Verificación
* **Estrategia de pruebas:**
  * **Pruebas Unitarias:** Validación del motor de cálculo de precios (verificación matemática de fórmulas de desperdicio, dimensiones y mano de obra).
  * **Pruebas de Integración:** Validación de la comunicación entre la API de IA y el backend para asegurar que el JSON generado contenga las llaves y tipos de datos correctos.
  * **Pruebas de Sistema / Aceptación:** Evaluación de casos de uso reales redactados por usuarios finales con terminología informal sobre muebles.

### 5. Mantenimiento y Evolución
* **Estrategia de parches:**
  * **Monitoreo de Prompts:** Ajuste continuo del *system prompt* según la variabilidad de las descripciones recibidas por los usuarios.
  * **Gestión de Versiones:** Despliegue de parches mediante integración continua (CI/CD) sin interrumpir la disponibilidad de la aplicación web.
  * **Actualización de Insumos:** Mantenimiento directo desde el panel de administración para ajustar precios de lista de materiales ante variaciones por inflación.