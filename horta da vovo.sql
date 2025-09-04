create database horta_da_vovo;

create table if not exists Plantas  (
Id_Plantas int primary key auto_increment,
canteiro float not null,
data_plantada Date not null,
 nome_planta varchar(50) not null,
 tipo_planta varchar(50) not null,
quantidade int not null);


INSERT INTO Plantas (canteiro, nome_planta, tipo_planta, data_plantada, quantidade) VALUES
(1.1, 'Tomate Caqui', 'Fruto', '2025-09-03', 12),
(1.2, 'Alface Lisa', 'Folhosa', '2025-09-07', 25),
(2.1, 'Beterraba', 'Raiz', '2025-09-12', 35),
(2.2, 'Couve-Flor', 'Flor', '2025-09-17', 8),
(3.1, 'Abobrinha', 'Fruto', '2025-09-21', 6),
(3.2, 'Espinafre', 'Folhosa', '2025-09-24', 15),
(4.1, 'Amora', 'Fruto', '2025-09-27', 20),
(4.2, 'Manjericão', 'Tempero', '2025-09-30', 10),
(5.1, 'Berinjela', 'Fruto', '2025-09-30', 7),
(5.2, 'Rúcula', 'Folhosa', '2025-10-02', 18);


create table if not exists Colheita (
id_Colheita int primary key auto_increment,
canteiro float not null,
 nome_planta_colhida varchar(50) not null,
 data_colhida Date not null,
 tipo_planta_colhida varchar(50) not null,
quantidade_colhida int not null);

INSERT INTO Colheita (canteiro, nome_planta_colhida, tipo_planta_colhida, data_colhida, quantidade_colhida) VALUES
(1.1, 'Salsinha', 'Tempero', '2025-10-18', 10),
(1.2, 'Couve', 'Folhosa', '2025-10-25', 12),
(2.1, 'Rabanete', 'Raiz', '2025-11-15', 20),
(2.2, 'Brócolis', 'Flor', '2025-11-22', 8),
(3.1, 'Tomate Cereja', 'Fruto', '2025-12-20', 18),
(3.2, 'Alface Crespa', 'Folhosa', '2025-11-10', 15),
(4.1, 'Abóbora', 'Fruto', '2026-01-10', 5),
(4.2, 'Cenoura', 'Raiz', '2025-12-01', 30),
(5.1, 'Morango', 'Fruto', '2025-12-08', 25),
(5.2, 'Pimentão', 'Fruto', '2025-11-12', 8);

SELECT
    c.canteiro,
    c.nome_planta_colhida,
    c.tipo_planta_colhida,
    c.data_colhida,
    c.quantidade_colhida
FROM
    Plantas p
INNER JOIN
    Colheita c ON p.canteiro = c.canteiro;