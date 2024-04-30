-- Usa la BD PCE
USE PCE
GO

-- Procedimiento para insertar un nuevo equipo en la tabla
CREATE PROCEDURE spEquipoSave
    @NombreEquipo VARCHAR(255),
    @CantidadJugadores INT,
    @NombreDT VARCHAR(255),
    @TipoEquipo VARCHAR(255),
    @CapitanEquipo VARCHAR(255),
    @TieneSub21 BIT
AS
BEGIN
    INSERT INTO Equipo (NombreEquipo, CantidadJugadores, NombreDT, TipoEquipo, CapitanEquipo, TieneSub21)
    VALUES (@NombreEquipo, @CantidadJugadores, @NombreDT, @TipoEquipo, @CapitanEquipo, @TieneSub21);
END
GO

-- Procedimiento para actualizar equipo en la tabla según Id
CREATE PROCEDURE spEquipoUpdateById
    @EquipoId INT,
    @NombreEquipo VARCHAR(255),
    @CantidadJugadores INT,
    @NombreDT VARCHAR(255),
    @TipoEquipo VARCHAR(255),
    @CapitanEquipo VARCHAR(255),
    @TieneSub21 BIT
AS
BEGIN
    UPDATE Equipo
    SET NombreEquipo = @NombreEquipo,
        CantidadJugadores = @CantidadJugadores,
        NombreDT = @NombreDT,
        TipoEquipo = @TipoEquipo,
        CapitanEquipo = @CapitanEquipo,
        TieneSub21 = @TieneSub21
    WHERE EquipoId = @EquipoId;
END
GO

-- Procedimiento para eliminar un equipo de la tabla según Id
CREATE PROCEDURE spEquipoDeleteById
    @EquipoId INT
AS
BEGIN
    DELETE FROM Equipo
    WHERE EquipoId = @EquipoId;
END
GO

-- Procedimiento almacenado para obtener la cantidad de equipos femeninos
CREATE PROCEDURE spObtenerCantidadEquiposFemeninos
AS
BEGIN
    SELECT dbo.fxObtenerCantidadEquiposFemeninos();
END
GO

-- Procedimiento almacenado para obtener la cantidad de equipos masculinos
CREATE PROCEDURE spObtenerCantidadEquiposMasculinos
AS
BEGIN
    SELECT dbo.fxObtenerCantidadEquiposMasculinos();
END
GO

-- Ejecución de prueba de las funciones 
EXEC spObtenerCantidadEquiposFemeninos
EXEC spObtenerCantidadEquiposMasculinos