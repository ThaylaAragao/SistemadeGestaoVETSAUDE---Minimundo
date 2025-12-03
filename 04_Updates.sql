PRAGMA foreign_keys = ON;
BEGIN TRANSACTION;

-- UPDATES
UPDATE Cliente
SET telefone = '11912345678'
WHERE id_cliente = 1;

UPDATE Cliente
SET telefone = '11932165487'
WHERE id_cliente = 2;

UPDATE Pet
SET idade = 6
WHERE id_pet = 1;

UPDATE medicamento_Consulta
SET dose_aplicada = '15mg'
WHERE id_consulta = 1 AND id_medicamento = 1;
