# Proyecto de Administración de Equipos de Fútbol

Este proyecto de aplicación de escritorio desarrollado en WPF (Windows Presentation Foundation) está diseñado para administrar los equipos de fútbol que participarán en un campeonato semestral en una región específica. La aplicación permite realizar operaciones como ingresar, modificar, eliminar y listar equipos de fútbol.

## Estructura del Proyecto

El proyecto está organizado en tres capas principales:

1. **Capa de Datos (DALC):**
   - Biblioteca de Clases (.NET Framework) que utiliza Entity Framework para el acceso a la base de datos.
   - Se incluyen los procedimientos almacenados, vistas y funciones necesarias para interactuar con la base de datos.

2. **Capa de Negocio (Negocio):**
   - Biblioteca de Clases (.NET Framework) que contiene la lógica empresarial de la aplicación.
   - Incluye una interfaz `IPersistente` con los métodos para crear, leer, actualizar y eliminar registros.
   - La clase `Equipo` refleja la estructura de la tabla Equipo en la base de datos y también implementa la interfaz `IPersistente`.
   - Se proporciona una clase `CommonBC` para instanciar el modelo de datos en la aplicación.
   - Se incluyen las clases `EquipoCollection` y `EquipoReportes` para listar equipos y obtener información específica, respectivamente.

3. **Capa de Interfaz de Usuario (GUI):**
   - Proyecto WPF App (.NET Framework) que proporciona la interfaz de usuario para interactuar con la aplicación.
   - Se incluyen funcionalidades como la visualización de equipos, la adición, modificación y eliminación de registros, así como la visualización de reportes.
   - Se agregan mensajes de confirmación y notificación para las operaciones realizadas.
   - Se implementa la visualización de la cantidad de equipos femeninos y masculinos mediante un MessageBox.
   - Incluye connectionStrings para la conexión con la base de datos.

## Instrucciones de Ejecución

1. Clonar o descargar el repositorio en su máquina local.
2. Abrir la solución en Visual Studio.
3. Compilar y ejecutar la aplicación.

## Estructura de Carpetas Adicionales

El repositorio también incluye dos carpetas adicionales:

1. **screenshots:**
   - Contiene capturas de pantalla que muestran distintas vistas y funcionalidades de la aplicación durante su elaboración y ejecución.
   - [Ver capturas de pantalla](screenshots/)

2. **scripts_sql:**
   - Contiene los scripts SQL necesarios para crear la base de datos, así como las vistas, funciones y procedimientos almacenados requeridos por la aplicación.
   - [Ver capturas de pantalla](scripts_sql/)

## Requisitos

- Se requiere tener instalado SQL Server como gestor de base de datos.
- Se necesita tener instalado Entity Framework como paquete NuGet en los proyectos de Capa de Datos y Capa de Negocio.
- Se debe utilizar C# como lenguaje de programación en toda la solución.

## Tecnologías Utilizadas

- **Frontend:**
  - Se utilizaron archivos XAML para el diseño de las vistas de la interfaz de usuario.

- **Backend:**
  - El desarrollo de la lógica empresarial y la interacción con la base de datos se realizó en C#.

## Autor

    Jose Contreras Stoltze
