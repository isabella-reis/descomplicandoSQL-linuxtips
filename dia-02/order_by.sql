-- Databricks notebook source
-- PRIMEIRA FORMA DE USAR O ORDER BY

SELECT 
      descUF,
      COUNT(DISTINCT idClienteUnico) as qtClienteEstado

FROM silver_olist.cliente
GROUP BY descUF
ORDER BY 2 -- DEPOIS DO GROUP BY --> O 2 diz para o SQL ordernar pela 2ª coluna da nossa consulta.

-- COMMAND ----------

-- SEGUNDA FORMA DE USAR O ORDER BY

SELECT 
      descUF,
      COUNT(DISTINCT idClienteUnico) as qtClienteEstado

FROM silver_olist.cliente
GROUP BY descUF
ORDER BY qtClienteEstado -- Podemos usar o próprio nome da coluna que criamos
-- NEM TODOS OS SIST. DE GERENCIAMENTO DE BD ACEITAM ISSO!!

-- COMMAND ----------

-- TERCEIRA FORMA DE USAR O ORDER BY

SELECT 
      descUF,
      COUNT(DISTINCT idClienteUnico) as qtClienteEstado

FROM silver_olist.cliente
GROUP BY descUF
ORDER BY COUNT(DISTINCT idClienteUnico) -- Deixamos explicito como queremos calcular nossa ordenação

-- COMMAND ----------

-- ORDERNAR DE FORMA CRESCENTE

SELECT 
      descUF,
      COUNT(DISTINCT idClienteUnico) as qtClienteEstado

FROM silver_olist.cliente
GROUP BY descUF
ORDER BY qtClienteEstado DESC -- DESC ordena de forma decrescente

-- COMMAND ----------

-- ORDERNAR DE FORMA CRESCENTE

SELECT 
      descUF,
      COUNT(DISTINCT idClienteUnico) as qtClienteEstado

FROM silver_olist.cliente
GROUP BY descUF
ORDER BY qtClienteEstado DESC 
LIMIT 1 -- Vai nos mostrar SÓ a linha do estado com maior qtd de clientes!!

-- COMMAND ----------


