-- Databricks notebook source
-- GROUP BY

SELECT 
      descUF,
      COUNT(*)

FROM silver_olist.cliente
GROUP BY descUF

-- Lemos: Selecione a UF e agrupe elas contando as linhas!!!!!

-- COMMAND ----------


