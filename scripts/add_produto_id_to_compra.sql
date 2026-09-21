ALTER TABLE compra 
ADD COLUMN produto_id INT NOT NULL,
ADD CONSTRAINT fk_id_produto 
    FOREIGN KEY (produto_id) REFERENCES produto(id);
