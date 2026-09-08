ALTER TABLE compra 
ADD COLUMN sessao_caixa_id INT NOT NULL,
ADD CONSTRAINT fk_compra_sessao 
    FOREIGN KEY (sessao_caixa_id) REFERENCES sessao_caixa(id);
