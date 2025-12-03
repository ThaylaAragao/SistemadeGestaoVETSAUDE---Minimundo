PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;

--TABELAS
CREATE TABLE Cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT,
    email TEXT
);

CREATE TABLE veterinario (
    id_veterinario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    especialidade TEXT
);

CREATE TABLE pet (
    id_pet INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    especie TEXT,
    idade INTEGER,
    id_cliente INTEGER NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Consulta (
    id_consulta INTEGER PRIMARY KEY AUTOINCREMENT,
    data_consulta TEXT NOT NULL, 
    id_pet INTEGER NOT NULL,
    id_veterinario INTEGER NOT NULL,
    descricao TEXT,
    FOREIGN KEY (id_pet) REFERENCES Pet(id_pet),
    FOREIGN KEY (id_veterinario) REFERENCES Veterinario(id_veterinario)
);

CREATE TABLE Medicamento (
    id_medicamento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    fabricante TEXT
);

CREATE TABLE medicamento_Consulta (
    id_consulta INTEGER,
    id_medicamento INTEGER,
    dose_aplicada TEXT,
    PRIMARY KEY (id_consulta, id_medicamento),
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta),
    FOREIGN KEY (id_medicamento) REFERENCES Medicamento(id_medicamento)
);

