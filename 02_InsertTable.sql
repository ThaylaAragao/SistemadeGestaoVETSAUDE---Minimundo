PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;

    
INSERT INTO Cliente (nome, telefone, email) 
VALUES
('Carlos Silva', '11999999999', 'carlossilva@gmail.com'),
('Ana Souza', '11888888888', 'anasouza@gmail.com');


INSERT INTO veterinario (nome, especialidade) 
VALUES
('Dra. Julia Mendes', 'Dermatologia'),
('Dr. Pedro Rocha', 'Clínico Geral');


INSERT INTO Pet (nome, especie, idade, id_cliente) VALUES
('Rex', 'Cachorro', 5, 1),
('Pingo', 'Gato', 3, 2);


INSERT INTO Consulta (data_consulta, id_pet, id_veterinario, descricao) VALUES
('2025-01-10', 1, 1, 'Coceira intensa'),
('2025-01-12', 2, 2, 'Check-up anual');


INSERT INTO Medicamento (nome, fabricante) VALUES
('Antialérgico PetMax', 'VetPharma'),
('VitaPet Plus', 'PetSaúde');


INSERT INTO medicamento_Consulta (id_consulta, id_medicamento, dose_aplicada) VALUES
(1, 1, '10mg'),
(2, 2, '5ml');
