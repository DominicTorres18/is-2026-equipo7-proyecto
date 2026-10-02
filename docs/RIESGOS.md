# GESTIÓN Y EVALUACIÓN DE RIESGOS (MODELO EN ESPIRAL)

Evaluación de riesgos del proyecto **CarpintIA** basada en el Modelo en Espiral de Barry Boehm.

---

## 1. Matriz de Evaluación de Riesgos

*Fórmula: Severidad = Probabilidad (1-5) × Impacto (1-5)*

| ID | Riesgo | Prob. | Imp. | Sev. | Nivel |
| :--- | :--- | :---: | :---: | :---: | :--- |
| **R-01** | **Alucinaciones de la IA:** Extracción errónea de medidas o materiales por ambigüedad. | 4 | 5 | **20** | **Crítico** |
| **R-02** | **Sobrecosto de API:** Consumo elevado de tokens que incremente costos operativos. | 3 | 3 | **9** | **Medio** |
| **R-03** | **Fórmulas imprecisas:** Errores en cálculo de desperdicio y costo de mano de obra. | 2 | 5 | **10** | **Alto** |

---

## 2. Mitigación y Contingencia por Espiral

### R-01: Alucinaciones de la IA (Severidad: 20)
* **Mitigación:** Usar *Structured Outputs* (JSON) y *prompts* con rangos válidos.
* **Prototipado:** Evaluar precisión de la API en la Espiral 1 con 50 casos de prueba.
* **Contingencia:** Pantalla de revisión manual para que el carpintero ajuste los datos antes del cálculo.

### R-03: Errores en Motor de Cálculo (Severidad: 10)
* **Mitigación:** Separar la IA (extracción) de la lógica de negocio (backend matemático).
* **Prototipado:** Pruebas unitarias y validación del algoritmo con carpinteros reales.

### R-02: Sobrecosto de API de IA (Severidad: 9)
* **Mitigación:** Implementar caché de consultas y límite de peticiones (*rate limiting*).
* **Prototipado:** Monitorear consumo de tokens en la Espiral 2 para ajustar costos.