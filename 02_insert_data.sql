-- ======================================================
-- 02_insert_data.sql
-- Inserção de dados nas tabelas da Clínica Veterinária
-- ======================================================

USE clinica_veterinaria;

-- Opcional: executar em transação para segurança
START TRANSACTION;

-- ==========================
-- Inserir Clientes
-- ==========================
INSERT INTO Cliente (nome, cpf, telefone, endereco)
VALUES
('Carlos Silva', '12345678901', '11988887777', 'Rua A, 100'),
('Mariana Souza', '98765432100', '11977776666', 'Av Central, 350'),
('João Pereira', '45612378955', '11966665555', 'Rua das Flores, 45');

-- ==========================
-- Inserir Animais
-- ==========================
INSERT INTO Animal (nomeAnimal, especie, raca, idade, idCliente)
VALUES
('Rex', 'Cachorro', 'Labrador', 5, 1),
('Mingau', 'Gato', 'Persa', 3, 2),
('Thor', 'Cachorro', 'Pastor Alemão', 4, 1),
('Nina', 'Gato', 'Siamês', 2, 3);

-- ==========================
-- Inserir Veterinários
-- ==========================
INSERT INTO Veterinario (nome, crmv, especialidade)
VALUES
('Dr. Roberto Almeida', 'CRMV12345', 'Clínico Geral'),
('Dra. Fernanda Lima', 'CRMV67890', 'Dermatologia'),
('Dr. Marcelo Castro', 'CRMV11223', 'Cirurgia');

-- ==========================
-- Inserir Atendimentos
-- ==========================
INSERT INTO Atendimento (dataAtendimento, descricao, idAnimal, idVeterinario)
VALUES
('2025-01-10', 'Consulta de rotina', 1, 1),
('2025-01-12', 'Tratamento de alergia', 2, 2),
('2025-01-15', 'Avaliação pré-cirúrgica', 3, 3),
('2025-01-18', 'Vacinação anual', 1, 1);

-- ==========================
-- Inserir Vacinas
-- ==========================
INSERT INTO Vacina (nomeVacina, dataAplicacao, idAnimal)
VALUES
('Antirrábica', '2025-01-18', 1),
('Polivalente V8', '2025-01-10', 3),
('Tríplice Felina', '2025-01-12', 2),
('Antirrábica', '2025-01-20', 4);

COMMIT;
