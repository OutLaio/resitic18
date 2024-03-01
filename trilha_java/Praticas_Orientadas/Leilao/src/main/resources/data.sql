CREATE TABLE IF NOT EXISTS Leilao (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(255) NOT NULL,
    ValorMinimo DOUBLE NOT NULL,
    Status BOOLEAN NOT NULL
);
CREATE TABLE IF NOT EXISTS Lance (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    LeilaoId INT NOT NULL,
    ConcorrenteId INT NOT NULL,
    Valor DOUBLE NOT NULL,
    FOREIGN KEY (LeilaoId) REFERENCES Leilao(Id),
    FOREIGN KEY (ConcorrenteId) REFERENCES Concorrente(Id)
);

CREATE TABLE IF NOT EXISTS Concorrente (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(14) UNIQUE NOT NULL
);