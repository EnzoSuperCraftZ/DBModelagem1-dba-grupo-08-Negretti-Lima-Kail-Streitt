CREATE TABLE IF NOT EXISTS compra (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    data_compra DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    forma VARCHAR(50) NOT NULL DEFAULT 'pendente',
    valor DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    metodo_pagamento VARCHAR(30) NOT NUL ,
    CHECK (metodo_pagamento IN ('pix', 'cartao_credito', 'cartao_debito', 'boleto')),
    cliente_id INT NOT NULL,
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (cliente_id) REFERENCES cliente(id)

);



ALTER TABLE compra 
ADD COLUMN sessao_caixa_id INT NOT NULL,
ADD CONSTRAINT fk_compra_sessao 
    FOREIGN KEY (sessao_caixa_id) REFERENCES sessao_caixa(id);
