# Sistema de Gestión Técnica - E&M Electronic Solutions (Samsung)

## 📝 Descripción del Proyecto
Este software ha sido desarrollado para la empresa **E&M Electronic Solutions**, un centro de servicios autorizado por Samsung. Su objetivo principal es la transición del registro manual en papel a un sistema digitalizado para el control de órdenes de servicio técnico a domicilio.

Es una herramienta práctica y directa que permite organizar el flujo de trabajo diario, asignación de técnicos y la generación de rutas de servicio.

## 🚀 Características Principales
*   **Gestión de Técnicos:** Registro, edición y control de personal técnico especializado en Línea Blanca y Línea Marrón.
*   **Control de Órdenes de Servicio:** Registro manual de números de orden (para coincidir con el talonario físico) y detalles del cliente.
*   **Integridad de Datos:** Aplicación de reglas de negocio que impiden la eliminación de técnicos que posean órdenes de servicio activas.
*   **Hoja de Ruta Inteligente:** Sistema de filtrado doble (Técnico + Fecha) para organizar la agenda diaria de visitas domiciliarias por rangos horarios.

## 🛠️ Tecnologías Utilizadas
*   **Lenguaje:** Java (JDK 17+)
*   **Entorno de Desarrollo:** Apache NetBeans IDE
*   **Base de Datos:** PostgreSQL
*   **Persistencia:** JDBC (Java Database Connectivity)
*   **Arquitectura:** Programación Orientada a Objetos (POO) con estructura de paquetes (Modelo, Vista, Conexión).

## 📁 Estructura del Proyecto
*   `src/clauprot/vistas`: Contiene los formularios JFrame (Interfaz de usuario).
*   `src/clauprot/conexion`: Contiene la lógica de conexión a la base de datos.
*   `src/clauprot/modelo`: (Si aplica) Clases de objeto para Técnicos y Órdenes.

## 👥 Autores
*   Luigi Rueda
*   Tatiana Ramírez
