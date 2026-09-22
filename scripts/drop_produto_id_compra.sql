ALTER TABLE compra 
  DROP CONSTRAINT fk_id_produto;
  DROP COLUMN produto_id; 
  ALTER COLUMN data_compra TYPE TIMESTAMPTZ USING data_compra::TIMESTAMPTZ;
