PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;

--SELECT--

-- 1. Pets e seus donos
SELECT p.nome AS pet, c.nome AS dono
FROM Pet p
JOIN Cliente c ON p.id_cliente = c.id_cliente;

-- 2. Consultas por veterinário
SELECT ct.data_consulta, v.nome AS veterinario, ct.descricao
FROM Consulta ct
JOIN veterinario v ON ct.id_veterinario = v.id_veterinario
ORDER BY ct.data_consulta DESC;

-- 3. Medicamentos aplicados em cada consulta
SELECT m.nome AS medicamento, mc.dose_aplicada, ct.id_consulta
FROM medicamento_Consulta mc
JOIN Medicamento m ON m.id_medicamento = mc.id_medicamento
JOIN Consulta ct ON ct.id_consulta = mc.id_consulta;

-- 4. Pets mais velhos
SELECT * FROM Pet
WHERE idade > 4;

-- 5. Clientes ordenados por nome
SELECT * FROM Cliente
ORDER BY nome ASC;
