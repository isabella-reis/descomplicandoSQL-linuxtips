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


