-- Databricks notebook source
-- Como se fosse a um IF!! 
-- CASO onde/ quando algo acontecer ENTÃO faça algo 

SELECT *,
        CASE WHEN descUF = 'SP' THEN 'paulista' END AS descNacionalidade
FROM  silver_olist.cliente

-- COMMAND ----------

-- Para os estados que não estão inclusos no CASE, ele coloca 'null', então podemos colocar uma exceção: ELSE

SELECT *,
-- Tudo isso cria uma única coluna
-- É case sensitive!! 
        CASE WHEN descUF = 'SP' THEN 'paulista' 
          WHEN descUF = 'RJ' THEN 'fluminense'
          WHEN descUF = 'PR' THEN 'paranaense'
          ELSE 'outros'
        END AS descNacionalidade
        
FROM  silver_olist.cliente



-- COMMAND ----------

-- Para verificar se algo tem alguma coisa em específico no nome, podemos usar o LIKE e escrever o que queremos entre '% %', pegamos coisas que são PARECIDAS com o que está dentro dos '% %' --> https://sparkbyexamples.com/spark/spark-sql-like-using-wildcard-example/
-- Se queremos que nao seja parecido, usamos o NOT LIKE
-- Com vírgulas criamos outros CASEs e podemos criar outras colunas

SELECT *,
-- Essa é uma coluna!
        CASE WHEN descUF = 'SP' THEN 'paulista' 
          WHEN descUF = 'RJ' THEN 'fluminense'
          WHEN descUF = 'PR' THEN 'paranaense'
          ELSE 'outros'
        END AS descNacionalidade,
        
-- Outra coluna!
        CASE
          WHEN descCidade LIKE '%sao%' THEN 'Tem "São" no nome'
          Else 'Não tem "São" no nome'
        END AS descCidadeSao
        
FROM  silver_olist.cliente



-- COMMAND ----------

SELECT *,

        CASE 
          WHEN descUF in ('SP', 'MG', 'RJ', 'ES') THEN 'sudeste'
        END AS descRegiao

FROM silver_olist.vendedor

-- COMMAND ----------


