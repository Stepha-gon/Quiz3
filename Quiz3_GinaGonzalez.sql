--Presentado por Gina Stephanie Gonzalez Quiz3
select * from dbo.[Ventas_Videojuegos(1)]


EXEC sp_rename 'dbo.Ventas_Videojuegos(1).Ventas_NA', 'NorteAmerica', 'COLUMN';
EXEC sp_rename 'dbo.Ventas_Videojuegos(1).Ventas_EU', 'Europa', 'COLUMN';
EXEC sp_rename 'dbo.Ventas_Videojuegos(1).Ventas_JP', 'Japon', 'COLUMN';
EXEC sp_rename 'dbo.Ventas_Videojuegos(1).Ventas_OTROS', 'Otros', 'COLUMN';


select Nombre,Region, Ventas
from dbo.[Ventas_Videojuegos(1)]
unpivot 
(
    Ventas
    for [Region] in ([NorteAmerica],[Europa],[Japon],[Otros])
)as quiz

