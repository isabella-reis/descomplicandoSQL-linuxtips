-- Databricks notebook source
-- A tabela FROM é a nossa referencia

-- INNER JOIN sempre precisamos ter dados combinados, se não eles ficam para fora, são excluidos
-- RIGHT e LEFT JOIN podem ter dados sozinhos se eles não derem match
-- RIGTH trás os dados do left 
-- LEFT trás os dados do right

SELECT T1.*, -- Ei SQL, trás TUDO da T1
       T2.descUF

FROM silver_olist.pedido AS T1

LEFT JOIN silver_olist.cliente AS T2
ON T1.idCliente = T2.idCliente -- É aqui que criamos o vinculo nas duas tabelas, é dessa informação que serão buscadas as coisas que queremos

-- COMMAND ----------


