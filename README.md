# Sistema de Ponto de Venda (PDV)

## Apresentação do Projeto

### Tema
O projeto consiste em um **Sistema de Ponto de Venda (PDV)** voltado para a automação do fluxo comercial e do atendimento no varejo físico, cobrindo desde a identificação do cliente até o fechamento contábil dos caixas.

### Objetivo Geral
Centralizar e estruturar o fluxo operacional de vendas de um estabelecimento comercial, garantindo:
* Registro organizado de clientes e do catálogo de produtos disponíveis.
* Controle diário dos turnos de trabalho e movimentações financeiras de cada caixa físico.
* Emissão confiável de pedidos com múltiplos itens, assegurando a integridade dos preços praticados no momento da venda e o controle dos métodos de pagamento.

### Público-Alvo
* **Operadores de caixa e atendentes:** que necessitam de agilidade para abrir turnos, registrar itens e finalizar recebimentos.
* **Gerentes e supervisores:** que precisam auditar divergências de caixa ao final do expediente (*fechamento de caixa*) e acompanhar o histórico de vendas.
* **Pequenos e médios comércios:** estabelecimentos como minimercados, padarias, cafeterias e lojas de conveniência que buscam substituir controles manuais por uma gestão padronizada.

---

## Modelo de Dados Relacional

A estrutura do sistema é organizada em cinco pilares fundamentais:

* **Cliente:** Mantém a identificação dos compradores através de CPF único e dados cadastrais.
* **Produto:** Armazena o catálogo de mercadorias disponíveis para venda e seus respectivos preços de tabela.
* **Sessão de Caixa:** Registra o terminal em uso, o operador responsável, o turno de trabalho e o saldo inicial da gaveta.
* **Compra:** Centraliza as transações realizadas, gravando data/hora, valor total acumulado, forma de pagamento, cliente atendido e terminal responsável.
* **Itens da Compra:** Detalha os produtos adquiridos em cada venda, preservando o valor unitário cobrado no momento exato do pedido.

### Diagrama Entidade-Relacionamento (ERD)

![Diagrama Entidade-Relacionamento do PDV](DIAGRAMA_MERCADO_DB.jpg)

---

### Dinâmica das Informações

* **Identificação da Venda:** Toda compra está diretamente conectada a um cliente cadastrado na base.
* **Rastreabilidade por Caixa:** Cada venda aponta para a sessão de caixa ativa no momento, possibilitando a conferência do montante total arrecadado por operador e turno.
* **Composição do Pedido:** A relação entre produtos e compras é gerenciada por meio da tabela de itens, permitindo múltiplos produtos por compra e repetidas vendas de um mesmo produto ao longo do tempo.
