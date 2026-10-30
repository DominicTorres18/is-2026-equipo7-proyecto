# Modelado Estructural y Diagramas de Arquitectura UML
**Proyecto:** CarpintIA  
**Asignatura:** Ingeniería de Software / Integración de Proyectos  

## 1. Diagrama de Clases UML (Sintaxis Mermaid)

```mermaid
classDiagram
class Usuario {
+int id
+string nombre
+string email
+string password_hash
+string rol
+autenticar()
}
class Cotizacion {
+int id
+string titulo_pieza
+text descripcion_natural
+json detalles_calculados
+date fecha_creacion
+procesar_ia()
}
class Material {
+int id
+string nombre_material
+float costo_unitario
+string unidad
+actualizar_costo()
}
Usuario "1" -- "*" Cotizacion : administra
Cotizacion "1" o-- "*" Material : desgasta