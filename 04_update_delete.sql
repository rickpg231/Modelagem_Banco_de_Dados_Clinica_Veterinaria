-- ============================================
-- 04_update_delete.sql
-- Comandos de UPDATE e DELETE para o projeto
-- Clínica Veterinária
-- ============================================

USE clinica_veterinaria;

-- ============================================
--                UPDATE
-- ============================================

-- 1) Atualizar o telefone de um cliente específico
UPDATE Cliente
SET telefone = '99999-0000'
WHERE idCliente = 1;

-- 2) Alterar a raça de um animal
UPDATE Animal
SET raca = 'Vira-lata'
WHERE idAnimal = 2;

-- 3) Atualizar a descrição de um atendimento
UPDATE Atendimento
SET descricao = 'Exame clínico completo com avaliação geral'
WHERE idAtendimento = 3;


-- ============================================
--                DELETE
-- ============================================

-- 1) Deletar uma vacina específica (exemplo: idVacina = 4)
DELETE FROM Vacina
WHERE idVacina = 4;

-- 2) Deletar um atendimento específico
DELETE FROM Atendimento
WHERE idAtendimento = 2;

-- 3) Deletar um animal (somente se não tiver atendimentos vinculados)
-- OBS: Este comando pode falhar caso haja restrição de chave estrangeira.
DELETE FROM Animal
WHERE idAnimal = 4;
