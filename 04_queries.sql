-- Total de usuários de um país específico
SELECT pais, COUNT(*) AS total_usuarios
FROM usuarios
WHERE pais = 'Brasil'
GROUP BY pais;

-- Total de cadastros por mês
SELECT DATE_TRUNC('month', data_cadastro) AS mes, COUNT(*) AS total
FROM usuarios
GROUP BY mes
ORDER BY mes;

-- Total de reproduções por categoria
SELECT categoria, COUNT(*) AS total_reproducoes
FROM reproducoes
GROUP BY categoria
ORDER BY total_reproducoes DESC;

-- Total de horas assistidas em um determinado período
SELECT
    DATE_TRUNC('month', data_reproducao) AS mes,
    SUM(duracao_segundos) / 3600 AS horas_assistidas
FROM reproducoes
WHERE data_reproducao BETWEEN '2024-01-01' AND '2025-12-31'
GROUP BY mes
ORDER BY mes;
