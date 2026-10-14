# Inventario de Historias de Usuario - Proyecto Final

## Historia de Usuario HU-01: Registro de Solicitud del Cliente
- **ID:** HU-01
- **Nombre:** Registro de Solicitud del Cliente
- **Como:** Cliente
- **Quiero:** Ingresar una descripción del mueble o trabajo de carpintería que necesito mediante la interfaz web
- **Para:** Proporcionar al sistema la información necesaria para generar una cotización
- **Estimación (Story Points):** 3
- **Prioridad:** Alta
- **Criterios de Aceptación (Gherkin):**
- **Escenario 1 (Solicitud Válida):** **Dado que** el cliente se encuentra en el formulario de solicitud, **Cuando** escribe una descripción del trabajo y hace clic en 'Continuar', **Entonces** el sistema valida la información y muestra un mensaje indicando que la solicitud fue registrada correctamente.
- **Escenario 2 (Solicitud Vacía):** **Dado que** el cliente se encuentra en el formulario de solicitud, **Cuando** intenta continuar sin ingresar una descripción, **Entonces** el sistema bloquea el envío y muestra una alerta indicando que debe proporcionar los detalles del trabajo.

---

## Historia de Usuario HU-02: Interpretación de la Solicitud con IA
- **ID:** HU-02
- **Nombre:** Interpretación de Solicitudes mediante IA
- **Como:** Cliente
- **Quiero:** Que la Inteligencia Artificial analice la descripción del trabajo que ingresé
- **Para:** Identificar automáticamente el tipo de mueble, características y materiales solicitados
- **Estimación (Story Points):** 8
- **Prioridad:** Alta
- **Criterios de Aceptación (Gherkin):**
- **Escenario 1 (Interpretación Exitosa):** **Dado que** el cliente ingresó una descripción válida como 'quiero un closet de tres puertas en madera de pino', **Cuando** el sistema procesa la solicitud, **Entonces** la IA identifica el tipo de mueble, número de puertas y tipo de madera y muestra la información interpretada.
- **Escenario 2 (Información Insuficiente):** **Dado que** el cliente ingresó una descripción que no contiene información suficiente para realizar el análisis, **Cuando** el sistema procesa la solicitud, **Entonces** muestra un mensaje solicitando información adicional.

---

## Historia de Usuario HU-03: Cálculo de Materiales
- **ID:** HU-03
- **Nombre:** Cálculo de Materiales Necesarios
- **Como:** Carpintero
- **Quiero:** Obtener automáticamente la cantidad de materiales necesarios para fabricar el trabajo solicitado
- **Para:** Reducir el tiempo utilizado en cálculos manuales y disminuir errores en la estimación de materiales
- **Estimación (Story Points):** 8
- **Prioridad:** Alta
- **Criterios de Aceptación (Gherkin):**
- **Escenario 1 (Cálculo Exitoso):** **Dado que** el sistema cuenta con las características y medidas del mueble, **Cuando** el carpintero solicita el cálculo de materiales, **Entonces** el sistema determina y muestra los materiales y cantidades necesarias para su fabricación.
- **Escenario 2 (Datos Incompletos):** **Dado que** faltan medidas necesarias para realizar el cálculo, **Cuando** el carpintero solicita el cálculo, **Entonces** el sistema indica qué información falta antes de generar el resultado.

---

## Historia de Usuario HU-04: Cálculo de Mano de Obra y Costos
- **ID:** HU-04
- **Nombre:** Cálculo de Mano de Obra y Costos
- **Como:** Carpintero
- **Quiero:** Calcular el costo de los materiales y la mano de obra del trabajo
- **Para:** Obtener un precio estimado que pueda utilizarse en la cotización del cliente
- **Estimación (Story Points):** 5
- **Prioridad:** Alta
- **Criterios de Aceptación (Gherkin):**
- **Escenario 1 (Cálculo de Costos):** **Dado que** el sistema cuenta con los materiales, cantidades y horas estimadas de trabajo, **Cuando** el carpintero solicita calcular el presupuesto, **Entonces** el sistema calcula y muestra el costo de materiales, mano de obra y costo total.
- **Escenario 2 (Precio Faltante):** **Dado que** uno de los materiales no tiene un precio registrado, **Cuando** el carpintero intenta generar el cálculo, **Entonces** el sistema identifica el material sin precio y solicita ingresar o actualizar su costo.

---

## Historia de Usuario HU-05: Generación de Cotización
- **ID:** HU-05
- **Nombre:** Generación de Cotización
- **Como:** Carpintero
- **Quiero:** Generar una cotización con la información del trabajo y su costo total
- **Para:** Entregar al cliente un presupuesto claro y organizado
- **Estimación (Story Points):** 5
- **Prioridad:** Alta
- **Criterios de Aceptación (Gherkin):**
- **Escenario 1 (Cotización Exitosa):** **Dado que** el sistema tiene los datos del trabajo y los costos calculados, **Cuando** el carpintero selecciona 'Generar cotización', **Entonces** el sistema crea una cotización que contiene descripción, materiales, mano de obra, costos y total.
- **Escenario 2 (Datos Incompletos):** **Dado que** la información necesaria para la cotización está incompleta, **Cuando** el carpintero intenta generarla, **Entonces** el sistema impide la generación y muestra los datos que deben completarse.

---

## Historia de Usuario HU-06: Consulta de Cotizaciones
- **ID:** HU-06
- **Nombre:** Consulta del Historial de Cotizaciones
- **Como:** Carpintero
- **Quiero:** Consultar las cotizaciones generadas anteriormente
- **Para:** Revisar presupuestos realizados y dar seguimiento a los trabajos solicitados
- **Estimación (Story Points):** 3
- **Prioridad:** Media
- **Criterios de Aceptación (Gherkin):**
- **Escenario 1 (Consulta Exitosa):** **Dado que** existen cotizaciones registradas en el sistema, **Cuando** el carpintero accede al historial de cotizaciones, **Entonces** el sistema muestra una lista con las cotizaciones disponibles y sus datos principales.
- **Escenario 2 (Sin Cotizaciones):** **Dado que** no existen cotizaciones registradas, **Cuando** el carpintero accede al historial, **Entonces** el sistema muestra un mensaje indicando que no existen cotizaciones disponibles.

---

## Distribución de Historias de Usuario

| Integrante | Historia | Módulo |
|---|---|---|
| Dominic | HU-01 | Solicitud del cliente |
| Dominic | HU-02 | Inteligencia Artificial |
| Dominic | HU-03 | Cálculo de materiales |
| Pavel | HU-04 | Costos y mano de obra |
| Pavel | HU-05 | Generación de cotización |
| Pavel | HU-06 | Historial de cotizaciones |