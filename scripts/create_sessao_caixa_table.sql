CREATE TABLE IF NOT EXISTS sessao_caixa (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    terminal VARCHAR(50) NOT NULL, 
    operador_nome VARCHAR(100) NOT NULL,
    turno VARCHAR(20) NOT NULL 
    CHECK (turno IN ('manhã', 'tarde', 'outro')),
    saldo_inicial DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    aberto_em TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    fechado_em TIMESTAMPTZ
); 
