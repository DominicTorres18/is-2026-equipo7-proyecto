# Especificación de Requisitos de Software (SRS) - IEEE Std 830-1998
**Proyecto:** CarpintIA  
**Asignatura:** Ingeniería de Software / Integración de Proyectos  
**Equipo:** Dominic Torres Juarez y Pavel (Ingeniería en Datos e Inteligencia Artificial - UPG)  

---

## 1. Introducción y Propósito
### 1.1 Alcance del Sistema
**CarpintIA** es una aplicación web inteligente diseñada para optimizar y automatizar el proceso de cotización en talleres de carpintería artesanales y medianos. El sistema delimita sus funciones en la interpretación de requerimientos de clientes redactados en lenguaje natural mediante el uso de inteligencia artificial (API de Gemini), el cálculo automatizado de materiales, dimensiones y herrajes, y la gestión de un historial de costos y presupuestos. 
* **Valor para el negocio:** Reduce drásticamente el tiempo de elaboración de presupuestos de horas a minutos, minimiza errores de cálculo humano en el uso de materia prima y mejora la precisión comercial de los talleres frente a sus clientes.

---

## 2. Requerimientos Funcionales (RF)

| Código | Nombre del Requisito | Descripción | Prioridad | Actor Principal |
| :--- | :--- | :--- | :---: | :--- |
| **RF-01** | Autenticación de Usuarios | El sistema permitirá el inicio de sesión seguro mediante tokens JWT y control de acceso basado en roles (Administrador / Carpintero). | Alta | Usuario / Admin |
| **RF-02** | Ingesta de Solicitudes en Lenguaje Natural | Módulo para capturar descripciones textuales o verbales de los clientes (ej. *“necesito una mesa de roble de 2x1 metros con 4 cajones”*) para su análisis. | Alta | Carpintero / Cliente |
| **RF-03** | Procesamiento de Modelos y IA | Ejecución de peticiones a la API de Gemini para extraer entidades clave (medidas, tipo de madera, herrajes) y calcular automáticamente los requerimientos de material. | Alta | Sistema (API Backend) |
| **RF-04** | Generación de Cotizaciones y Historial | Creación de cotizaciones formales estructuradas con desglose de costos y exportación en formato PDF, además de conservar un historial consultable. | Media | Administrador / Usuario |

---

## 3. Requerimientos No Funcionales (RNF - ISO/IEC 25010)

- **RNF-01 (Rendimiento):** El tiempo de respuesta del sistema al procesar una solicitud de cotización mediante la API de inteligencia artificial no excederá los 3.5 segundos bajo una carga concurrente estándar.
- **RNF-02 (Seguridad):** Toda la comunicación cliente-servidor estará cifrada mediante HTTPS/TLS 1.3, las contraseñas se almacenarán utilizando hashing robusto con `bcrypt`, y el acceso a los datos de los clientes cumplirá con la normatividad de privacidad.
- **RNF-03 (Mantenibilidad):** El código fuente modular del backend y frontend mantendrá una estructura limpia y documentada, alcanzando al menos un 80% de cobertura en pruebas unitarias y de integración.

---

## 4. Diagrama de Casos de Uso (Mermaid) y Descripción Tabular

```mermaid
usecaseDiagram
actor Carpintero as Usuario
actor Administrador

package "Sistema CarpintIA" {
usecase "CU-01: Iniciar Sesión" as CU1
usecase "CU-02: Ingresar Solicitud en Lenguaje Natural" as CU2
usecase "CU-03: Consultar Cotización y Desglose" as CU3
usecase "CU-04: Gestionar Precios y Catálogo" as CU4
}

Usuario --> CU1
Usuario --> CU2
Usuario --> CU3
Administrador --> CU4