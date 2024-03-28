create database MJTechSolutions

use MJTechSolutions

CREATE TABLE Cliente (
    ID_Cliente INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    Direcci�n NVARCHAR(255),
    Tel�fono NVARCHAR(20)
);


CREATE TABLE Pedido (
    ID_Pedido INT PRIMARY KEY,
    ID_Cliente INT,
    Fecha_Pedido DATE,
    Estado_Pedido NVARCHAR(50),
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);


CREATE TABLE Producto (
    ID_Producto INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    Descripci�n NVARCHAR(255),
    Peso_Volumen DECIMAL(10,2)
);


CREATE TABLE Ruta (
    ID_Ruta INT PRIMARY KEY,
    Descripci�n NVARCHAR(255),
    Distancia_Total DECIMAL(10,2),
    Tiempo_Entrega INT
);


CREATE TABLE Detalle_Pedido (
    ID_Detalle_Pedido INT PRIMARY KEY,
    ID_Pedido INT,
    ID_Producto INT,
    Cantidad INT,
    Precio_Unitario DECIMAL(10,2),
    FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido),
    FOREIGN KEY (ID_Producto) REFERENCES Producto(ID_Producto)
);





INSERT INTO Cliente (ID_Cliente, Nombre, Direcci�n, Tel�fono)
VALUES 
(1, 'Supermercado La Familia', 'Calle Principal 123', '829-456-7890'),
(2, 'Restaurante El Buen Sabor', 'Avenida Gourmet 456', '809-654-3210'),
(3, 'Ferreter�a La Herramienta', 'Calle del Progreso 789', '849-222-3333'),
(4, 'Peluquer�a Estilo Elegante', 'Avenida de la Belleza 101', '829-555-6666'),
(5, 'Farmacia San Rafael', 'Calle de la Salud 202', '809-888-9999'),
(6, 'Supermercado FrescoMarket', 'Avenida de los Alimentos 303', '849-222-1111'),
(7, 'Taller Mec�nico R�pido y Seguro', 'Calle de los Repuestos 404', '829-444-3333'),
(8, 'Cafeter�a El Sabor del Caf�', 'Avenida del Caf� 505', '809-777-8888'),
(9, 'Librer�a Cultura y Saber', 'Calle de los Libros 606', '849-888-7777'),
(10, 'Gimnasio Salud y Forma', 'Avenida del Deporte 707', '829-333-4444');



INSERT INTO Pedido (ID_Pedido, ID_Cliente, Fecha_Pedido, Estado_Pedido)
VALUES 
(1, 1, '2024-03-01', 'En proceso'),
(2, 3, '2024-03-02', 'Entregado'),
(3, 5, '2024-03-03', 'En espera'),
(4, 2, '2024-03-04', 'En proceso'),
(5, 7, '2024-03-05', 'Entregado'),
(6, 4, '2024-03-06', 'En espera'),
(7, 6, '2024-03-07', 'En proceso'),
(8, 8, '2024-03-08', 'Entregado'),
(9, 10, '2024-03-09', 'En proceso'),
(10, 9, '2024-03-10', 'En espera');


INSERT INTO Producto (ID_Producto, Nombre, Descripci�n, Peso_Volumen) 
VALUES 
(1, 'Leche', 'Leche entera pasteurizada', 1.00),
(2, 'Arroz', 'Arroz blanco de grano largo', 2.00),
(3, 'Desinfectante', 'Desinfectante de manos', 0.05),
(4, 'Antis�ptico', 'Soluci�n antis�ptica', 0.03),
(5, 'Analg�sico', 'Crema analg�sica', 0.08),
(6, 'Camiseta', 'Camiseta de algod�n', 0.3),
(7, 'Jeans', 'Pantalones vaqueros', 0.5),
(8, 'Zapatos', 'Zapatos de cuero', 0.8),
(9, 'Herramienta el�ctrica', 'Taladro el�ctrico', 2.5),
(10, 'Componente electr�nico', 'Placa de circuito impreso', 0.1)


INSERT INTO Ruta (ID_Ruta, Descripci�n, Distancia_Total, Tiempo_Entrega)
VALUES 
(1, 'Ruta 1 - Zona Este', 50.5, 120),
(2, 'Ruta 2 - Zona Oeste', 65.2, 150),
(3, 'Ruta 3 - Zona Norte', 40.8, 100),
(4, 'Ruta 4 - Zona Sur', 55.3, 130),
(5, 'Ruta 5 - Zona Central', 48.6, 110),
(6, 'Ruta 6 - Zona Metropolitana', 70.1, 160),
(7, 'Ruta 7 - Zona Rural', 85.7, 180),
(8, 'Ruta 8 - Zona Industrial', 60.4, 140),
(9, 'Ruta 9 - Zona Comercial', 45.9, 105),
(10, 'Ruta 10 - Zona Residencial', 52.0, 115);


INSERT INTO Detalle_Pedido (ID_Detalle_Pedido, ID_Pedido, ID_Producto, Cantidad, Precio_Unitario)
VALUES 
(1, 1, 1, 5, 2.50),
(2, 1, 2, 2, 8.00),
(3, 2, 3, 1, 1.50),
(4, 3, 4, 3, 5.00),
(5, 4, 5, 2, 4.00),
(6, 4, 6, 1, 3.00),
(7, 5, 7, 4, 2.50),
(8, 6, 8, 2, 1.00),
(9, 7, 9, 3, 10.00),
(10, 8, 10, 1, 3.50);
