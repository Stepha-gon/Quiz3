select * from dbo.[ventas Videojuegos (3)]


EXEC sp_rename 'dbo.ventas Videojuegos (3).Ventas NA', 'NorteAmerica', 'COLUMN';
EXEC sp_rename 'dbo.ventas Videojuegos (3).Ventas EU', 'Europa', 'COLUMN';
EXEC sp_rename 'dbo.ventas Videojuegos (3).Ventas JP', 'Japon', 'COLUMN';
EXEC sp_rename 'dbo.ventas Videojuegos (3).Ventas OTROS', 'Otros', 'COLUMN';


select Nombre,Region, Ventas
from dbo.[ventas Videojuegos (3)]
unpivot 
(
    Ventas
    for [Region] in ([NorteAmerica],[Europa],[Japon],[Otros])
)as quiz

