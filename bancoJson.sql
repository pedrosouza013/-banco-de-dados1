-- 1. Cria a tabela usando o tipo nativo JSON para armazenar dados complexos
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    detalhes JSON
);

-- 2. Insere um registro salvando a estrutura de chaves e arrays no campo JSON
INSERT INTO produtos (nome, detalhes)
VALUES ('Camiseta', '{"cores": ["vermelho", "azul"], "tamanhos": ["P", "M", "G"]}');

-- 3. Executa a consulta extraindo e filtrando as informações do campo JSON
SELECT 
    nome, 
    detalhes->'$.cores' AS cores_disponiveis,
    detalhes->>'$' AS json_completo
FROM produtos;
