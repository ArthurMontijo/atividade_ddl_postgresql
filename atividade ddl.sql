CREATE TABLE Marinheiros (
    id_marin    INTEGER PRIMARY KEY,
    nome_marin  VARCHAR(40) NOT NULL,
    avaliacao   INTEGER CHECK (avaliacao BETWEEN 1 AND 10),
    idade       REAL CHECK (idade >= 0)
);





CREATE TABLE Barcos (
    id_barco    INTEGER PRIMARY KEY,
    nome_barco  VARCHAR(40) NOT NULL,
    cor         VARCHAR(20)
);




CREATE TABLE Reservas (
    id_marin    INTEGER,
    id_barco    INTEGER,
    dia         DATE,
    PRIMARY KEY (id_marin, id_barco, dia),
    FOREIGN KEY (id_marin) REFERENCES Marinheiros (id_marin)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_barco) REFERENCES Barcos (id_barco)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);




CREATE INDEX idx_cor_barco ON Barcos (cor);




INSERT INTO Marinheiros (id_marin, nome_marin, avaliacao, idade) VALUES
(22, 'Daniel', 7, 45),
(31, 'Lucas', 8, 55),
(58, 'Raul', 10, 35),
(71, 'Zé', 10, 16);




INSERT INTO Barcos (id_barco, nome_barco, cor) VALUES
(101, 'Interlagos', 'azul'),
(102, 'Interlagos', 'vermelho'),
(103, 'Clipper', 'verde');




INSERT INTO Reservas (id_marin, id_barco, dia) VALUES
(22, 101, '2026-10-01'),
(22, 103, '2026-10-05'),
(31, 102, '2026-10-03'),
(58, 102, '2026-10-07');

