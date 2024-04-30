
-- Creación de la BD PCE
CREATE DATABASE PCE
GO

-- Se hace uso de la BD PCE
USE PCE
GO

-- Creación de la tabla Equipo
CREATE TABLE Equipo(
	EquipoId INT IDENTITY(1,1) NOT NULL,
	NombreEquipo VARCHAR(255) UNIQUE NOT NULL,
	CantidadJugadores INT NOT NULL,
	NombreDT VARCHAR(255) NOT NULL,
	TipoEquipo VARCHAR(255) NOT NULL,
	CapitanEquipo VARCHAR(255) NOT NULL,
	TieneSub21 BIT NOT NULL,
	CONSTRAINT Pk_Equipo_EquipoId PRIMARY KEY (EquipoId)
)
GO

-- Inserción de datos en la tabla Equipo
INSERT INTO Equipo (NombreEquipo, CantidadJugadores, NombreDT, TipoEquipo, CapitanEquipo, TieneSub21) 
VALUES 
    ('Portland Thorns FC', 20, 'Mark Parsons', 'Femenino', 'Christine Sinclair', 1),
    ('Juventus Masculino', 24, 'Massimiliano Allegri', 'Masculino', 'Giorgio Chiellini', 0),
    ('Bayern Munich Masculino', 22, 'Hans-Dieter Flick', 'Masculino', 'Manuel Neuer', 1),
    ('Arsenal Femenino', 21, 'Joe Montemurro', 'Femenino', 'Kim Little', 0),
    ('Manchester United Femenino', 20, 'Casey Stoney', 'Femenino', 'Katie Zelem', 1),
    ('Liverpool Femenino', 22, 'Matt Beard', 'Femenino', 'Niamh Fahey', 0),
    ('Tottenham Hotspur Femenino', 19, 'Rehanne Skinner', 'Femenino', 'Ashleigh Neville', 1),
    ('Atletico Madrid Masculino', 23, 'Diego Simeone', 'Masculino', 'Koke', 0),
    ('Borussia Dortmund Masculino', 21, 'Marco Rose', 'Masculino', 'Marco Reus', 1),
    ('Manchester United Masculino', 24, 'Ole Gunnar Solskjaer', 'Masculino', 'Harry Maguire', 0);
GO

-- Vista para consultar todos los datos de la tabla
CREATE VIEW VwGetEquipos AS
	SELECT * FROM Equipo
GO

-- Crea función para obtener la cantidad de equipos femeninos
CREATE FUNCTION fxObtenerCantidadEquiposFemeninos()
RETURNS INT
AS
	BEGIN
		DECLARE @res INT = (    
			SELECT COUNT(TipoEquipo)
			FROM PCE.dbo.VwGetEquipos
			WHERE TipoEquipo = 'Femenino')
		RETURN @res;
	END
GO

-- Crea función para obtener la cantidad de equipos masculinos
CREATE FUNCTION fxObtenerCantidadEquiposMasculinos()
RETURNS INT
AS
	BEGIN
		DECLARE @res INT = (    
			SELECT COUNT(TipoEquipo)
			FROM PCE.dbo.VwGetEquipos
			WHERE TipoEquipo = 'Masculino')
		RETURN @res;
	END
GO


-- Para obtener la cantidad de equipos femeninos
SELECT dbo.fxObtenerCantidadEquiposFemeninos() AS CantidadEquiposFemeninos;

-- Para obtener la cantidad de equipos masculinos
SELECT dbo.fxObtenerCantidadEquiposMasculinos() AS CantidadEquiposMasculinos;
