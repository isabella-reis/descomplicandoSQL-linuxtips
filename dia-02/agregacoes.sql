-- Databricks notebook source
-- 1ª função de Agregações --> COUNT, está contando nossos clientes, as linhas não nulas da nossa tabela

SELECT count(*) AS nrLinhasNaoNulas
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 

  COUNT(*) AS nrLinhasNaoNulas, 
  COUNT(idCliente) AS nrIdClienteNaoNulo 

FROM silver_olist.cliente

-- COMMAND ----------

SELECT 

  COUNT(*) AS nrLinhasNaoNulas, 
  COUNT(idCliente) AS nrIdClienteNaoNulo,
  COUNT (distinct idCliente) AS nrIdClienteDisititos --ID de clientes disferentes

FROM silver_olist.cliente

-- COMMAND ----------

SELECT 

  COUNT(*) AS nrLinhasNaoNulas, 
  COUNT(idCliente) AS nrIdClienteNaoNulo,
  COUNT(distinct idCliente) AS nrIdClienteDisititos, --ID de clientes disferentes
  COUNT(distinct idClienteUnico) as nrIdClienteUnicoDistintos

FROM silver_olist.cliente

-- COMMAND ----------

-- Usando o SELECT FROM WHERE com o COUNT
-- Quantos clientes são da cidade de Presidente Prudente?
-- Lemos: Selecione a contagem da tabela X aonde a cidade seja Presidente Prudente
-- Ele cria uma coluna com a contagem!

-- PS: O WHERE, embora seja escrito por último, ele acontece primeiro.

SELECT 
    COUNT(*),
    COUNT(DISTINCT idCliente) AS qtClientes,
    COUNT(DISTINCT idClienteUnico) AS qtClientesUnicos

FROM silver_olist.cliente

WHERE descCidade IN ('presidente prudente', 'ponta grossa')

-- COMMAND ----------

SELECT

  ROUND(AVG(vlPreco), 2) AS avgPreco, -- Average --> média da coluna vlPreco
  
  PERCENTILE(vlPreco, 0.5) AS medianPreco, -- Preço médio dos produtos
  
  AVG(vlFrete) AS avgFrete, -- Average --> média da coluna vlFrete
  MAX(vlPreco) AS maxPreco, -- Produto mais caro
  MAX(vlFrete) AS maxFrete, -- Frete mais caro
  MIN(vlFrete) AS minFrete -- Frete mais barato
  
FROM silver_olist.item_pedido

-- COMMAND ----------

-- Conta a qntd de clientes de X local
SELECT COUNT(*) 
FROM silver_olist.cliente

WHERE descUF = 'SP'

-- COMMAND ----------


