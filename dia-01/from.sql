-- Databricks notebook source
-- Precisamos dizer o que queremos selecionar
-- Estamos pedindo pra selecionar TUDO da tabela silver_olist.pedido
SELECT * FROM silver_olist.pedido

-- COMMAND ----------

-- E se eu só quero algumas colunas? 
SELECT idPedido, 
       descSituacao
FROM silver_olist.pedido
-- Lemos: selecione a coluna idPedido E a descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

-- Vamos definir um limite especifico de dados, não sabemos se foram os 1os dados, os últimos, os do meio....
SELECT idPedido, 
       descSituacao
FROM silver_olist.pedido
LIMIT 5

-- COMMAND ----------

-- Algumas funções que temos no SQL (cheque todas aqui --> https://spark.apache.org/docs/latest/api/sql/index.html)
-- AS é oq chamamos de ALIAS, estamos apelidando algo (nesse caso, dando um nome pra nossa nova coluna)
-- AS é opcional!! Mas é uma boa prática colocar ele, melhora a legibilidade

SELECT *,
       DATEDIFF(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega

FROM silver_olist.pedido

LIMIT 10

-- COMMAND ----------


