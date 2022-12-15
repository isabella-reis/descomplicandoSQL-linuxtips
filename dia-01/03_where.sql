-- Databricks notebook source
WHERE é depois do FROM e colocamos alguma condição

SELECT * 
FROM silver_olist.pedido

WHERE descSituacao = 'shipped'

-- Lemos: selecione todas as colunas da tabela silver_olist.pedidos ONDE situação do pedido for 'delivered'
-- LIMIT 100


-- COMMAND ----------

-- AND nos permite adicionar mais condições

SELECT * 
FROM silver_olist.pedido

WHERE descSituacao = 'shipped'
AND year(dtPedido) = '2018'

-- Lemos: selecione todas as colunas da tabela silves_olist.pedidos filtrando pedidos shipped do ano de 2018


-- COMMAND ----------

-- AND nos permite adicionar mais condições
-- Existe uma ordem para as coisas acontecerem, da direita para a esquerda! 
-- Colocamos nossas 1as condições entre ( ), para mostrar shipped or canceled apenas de 2018

SELECT * 
FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'



-- COMMAND ----------

-- Deixando mais "elegante" e enxuto.
SELECT * 
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'



-- COMMAND ----------


SELECT *,
       datediff(dtEstimativaEntrega, dtAprovado)
       
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30

-- Lemos: selecione todas as colunas onde o pedido esteja em situação shipped ou canceled do ano de 2018 E a diferença entre a data de estimativa de entrega e de aprovação do pedido seja maior do que 30 dias. Além disso estamos pedindo para mostrar a diferença

-- COMMAND ----------


