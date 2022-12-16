-- Databricks notebook source
-- TODOS OS ESTADOS QUE TEM MAIS DO QUE 100 VENDEDORES POR ESTADO
SELECT descUF,
       COUNT(idVendedor) AS qtVendedorUF

FROM silver_olist.vendedor

-- SEMPRE DEPOIS DO FROM E ANTES DO GROUP BY
-- Estamos deixando apenas os estados que queremos, então ele vai tirar todos os outros estados e deixar só esses para o processamento
WHERE descUF IN ('SP', 'MG', 'RJ', 'ES')

-- Agrupamos pelos estados 
GROUP BY descUF

-- Vamos filtrar os que têm mais de 100 
HAVING qtVendedorUF >= 100

ORDER BY qtVendedorUF DESC

-- Lemos: Selecione os estados agrupando e contando quantos vendedores tem por estado, apenas pros estados selecionados, agrupando eles e filtrando somente os estados que tem mais de 100 vendedores e ordenando do estado que tem mais vendedores para o que tem menos


-- COMMAND ----------


