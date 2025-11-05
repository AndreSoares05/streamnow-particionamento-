-- Partições da tabela usuarios 
CREATE TABLE usuarios_2024 PARTITION OF usuarios
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE usuarios_2025 PARTITION OF usuarios
FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Partições da tabela reproducoes
CREATE TABLE reproducoes_2024s1 PARTITION OF reproducoes
FOR VALUES FROM ('2024-01-01') TO ('2024-07-01');

CREATE TABLE reproducoes_2024s2 PARTITION OF reproducoes
FOR VALUES FROM ('2024-07-01') TO ('2025-01-01');
