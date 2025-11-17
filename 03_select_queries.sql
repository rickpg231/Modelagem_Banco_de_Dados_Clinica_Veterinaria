-- ============================================
-- 03_select_queries.sql
-- Consultas SQL para o projeto Clínica Veterinária
-- ============================================

USE clinica_veterinaria;

-- 1) Listar todos os clientes ordenados pelo nome
SELECT 
    idCliente,
    nome,
    telefone
FROM Cliente
ORDER BY nome ASC;

-- 2) Listar todos os animais de um cliente específico (exemplo: idCliente = 1)
SELECT 
    A.idAnimal,
    A.nome AS nome_animal,
    A.especie,
    A.raca,
    A.idade,
    C.nome AS nome_cliente
FROM Animal A
JOIN Cliente C ON A.idCliente = C.idCliente
WHERE A.idCliente = 1;

-- 3) Consultar todos os atendimentos com nome do animal e nome do veterinário
SELECT
    AT.idAtendimento,
    A.nome AS animal,
    V.nome AS veterinario,
    AT.dataAtendimento,
    AT.descricao
FROM Atendimento AT
JOIN Animal A ON AT.idAnimal = A.idAnimal
JOIN Veterinario V ON AT.idVeterinario = V.idVeterinario
ORDER BY AT.dataAtendimento DESC;

-- 4) Listar todas as vacinas aplicadas com informações do animal
SELECT
    V.idVacina,
    V.tipoVacina,
    V.dataAplicacao,
    A.nome AS animal,
    C.nome AS cliente
FROM Vacina V
JOIN Animal A ON V.idAnimal = A.idAnimal
JOIN Cliente C ON A.idCliente = C.idCliente
ORDER BY V.dataAplicacao DESC;

-- 5) Contar quantos animais cada cliente possui
SELECT
    C.nome AS cliente,
    COUNT(A.idAnimal) AS total_animais
FROM Cliente C
LEFT JOIN Animal A ON C.idCliente = A.idCliente
GROUP BY C.idCliente, C.nome
ORDER BY total_animais DESC;

-- 6) Buscar atendimentos feitos por um veterinário específico (exemplo: idVeterinario = 2)
SELECT
    AT.idAtendimento,
    AT.dataAtendimento,
    A.nome AS animal,
    V.nome AS veterinario
FROM Atendimento AT
JOIN Animal A ON AT.idAnimal = A.idAnimal
JOIN Veterinario V ON AT.idVeterinario = V.idVeterinario
WHERE AT.idVeterinario = 2;

-- 7) Listar animais que possuem idade acima de 5 anos
SELECT 
    idAnimal,
    nome,
    especie,
    idade
FROM Animal
WHERE idade > 5
ORDER BY idade DESC;

-- 8) Consultar todas as vacinas aplicadas em cães
SELECT
    V.idVacina,
    V.tipoVacina,
    V.dataAplicacao,
    A.nome AS animal
FROM Vacina V
JOIN Animal A ON V.idAnimal = A.idAnimal
WHERE A.especie = 'Cachorro';
