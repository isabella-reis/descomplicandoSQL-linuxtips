-- Databricks notebook source
-- DBTITLE 1,Exercicio 01
-- Selecionar todos os clientes paulistanos

SELECT *

FROM silver_olist.cliente

WHERE descCidade = 'sao paulo'


-- COMMAND ----------

-- DBTITLE 1,Exercicio 02
-- Selecione todos os clientes paulistas

SELECT *
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

-- DBTITLE 1,Exercicio 03
-- Selecione todos os vendedores paulistas e cariocas

SELECT *

FROM silver_olist.vendedor

  WHERE descCidade = ('rio de janeiro')
  OR descUF = 'SP'

-- COMMAND ----------

-- DBTITLE 1,Exercicio 04
-- Selecione todos os produtos de perfumaria e de bebes maiores que 5cm

SELECT * 
FROM silver_olist.produto

-- significa que vai selecionar todas as linhas com a categoria igual a qualquer opção que estiver dentro dos parênteses
-- IN funciona como uma lista dentro de outra lista
  WHERE descCategoria IN ('perfumaria', 'bebes')
  AND vlAlturaCm > 5

-- COMMAND ----------

-- DBTITLE 1,Exercicio 06
-- Lista de pedidos feitos em dezembro de 2017 e entregues com atraso
SELECT *,
       DATE(dtEntregue), 
       DATE(dtEstimativaEntrega) 
       
FROM silver_olist.pedido

WHERE YEAR(dtPedido) = 2017
AND MONTH(dtPedido) = 12
AND descSituacao = 'delivered'
AND DATE(dtEntregue) > DATE(dtEstimativaEntrega) 
-- Selecione todas as colunas da tabela aonde o ano = 2017 e o mes = 12

-- COMMAND ----------

-- DBTITLE 1,Exercicio 08
-- Selecione pedidos com 2 ou mais parcelas menores que 20,00

SELECT *,
      ROUND(vlPagamento / nrPacelas, 2) AS vlParcela

FROM silver_olist.pagamento_pedido

WHERE nrPacelas >= 2
AND vlPagamento / nrPacelas < 20

-- COMMAND ----------

-- DBTITLE 1,Exercicio 02 - CASE
-- Selecione os itens de pedidos e defina os grupos em uma nova coluna segundo a porcentagem do frete do valor total;
-- para frete inferior a 10%: '10%'
-- para frete entre 10% e 25%: '10% a 25%'
-- para frete entre 25% e 50%: '25% a 50%'
-- para frete maior que 50%: '+50%'

SELECT *,
      vlPreco + vlFrete AS vlTotal,
      vlFrete / (vlPreco + vlFrete) AS pctFrete,
      
      CASE
        WHEN vlFrete / (vlPreco + vlFrete) <= 0.1 THEN '10%'
        WHEN vlFrete / (vlPreco + vlFrete) <= 0.25 THEN '10% a 25%'
        WHEN vlFrete / (vlPreco + vlFrete) <= 0.50 THEN '25% a 50%'
        ELSE '+50%'
      END AS descFretePct
        

FROM silver_olist.item_pedido

-- COMMAND ----------


