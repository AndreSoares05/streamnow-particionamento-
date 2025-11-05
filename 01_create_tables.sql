-- Tabela principal particionada: usuarios
CREATE TABLE usuarios (
    id_usuario SERIAL ,
    nome VARCHAR(100),
    pais VARCHAR(50),
    data_cadastro DATE NOT NULL,
    plano VARCHAR(20)
) PARTITION BY RANGE (data_cadastro);

-- Tabela principal particionada: reproducoes
CREATE TABLE reproducoes (
    id_reproducao SERIAL ,
    data_reproducao DATE NOT NULL,
    duracao_segundos INT,
    categoria VARCHAR(50)
) PARTITION BY RANGE (data_reproducao);
