# Planificación del Sprint 1 (Sprint Planning)

## 1. Meta del Sprint (Sprint Goal)
Construir el flujo inicial de solicitud de cotización, procesamiento con IA y motor de cálculo base para estimación de materiales y costos.

## 2. Historias Compromiso para el Sprint 1

| ID | Historia de Usuario | Módulo | Story Points | Responsable (Assignee) |
|---|---|---|---|---|
| HU-01 | Solicitud del cliente | Solicitud del cliente | 5 pts | @Dominic |
| HU-02 | Inteligencia Artificial | Inteligencia Artificial | 8 pts | @Dominic |
| HU-03 | Cálculo de materiales | Cálculo de materiales | 5 pts | @Dominic |
| HU-04 | Costos y mano de obra | Costos y mano de obra | 5 pts | @Pavel |

## 3. Acuerdos de Calidad Ágil

### Definition of Ready (DoR)
Una historia entra al Sprint solo si cumple con los siguientes puntos:
- Tiene criterios de aceptación redactados en formato Gherkin (`Given-When-Then`).
- Cuenta con una estimación en Story Points aprobada por el equipo.
- Tiene resueltas las dependencias técnicas y de base de datos preliminares.
- Cuenta con los modelos o especificaciones técnicas necesarias para su desarrollo.

### Definition of Done (DoD)
Una historia se considera 'Hecha' únicamente cuando:
- El código ha sido revisado y aprobado mediante Peer Review en un Pull Request (PR).
- Cumple con el linter de estilo del proyecto sin errores.
- Los criterios de aceptación definidos en Gherkin fueron validados con éxito.
- El código está integrado en la rama principal (`main` / `develop`).