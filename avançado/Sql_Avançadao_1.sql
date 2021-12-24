select * from tabela_de_produtos where NOT(sabor = 'Laranja' OR TAMANHO = '1 litro');

select * from tabela_de_produtos where  sabor LIKE "%Maçã%" or EMBALAGEM like '%Garrafa%';

SELECT * FROM tabela_de_clientes WHERE NOME LIKE '%Mattos%';

select distinct BAIRRO from tabela_de_clientes where CIDADE = "Rio de Janeiro";

SELECT  CPF,MATRICULA,NUMERO,IMPOSTO FROM notas_fiscais  WHERE DATA_VENDA = '2017-01-01'  ORDER BY NUMERO DESC limit 10;

SELECT  * FROM notas_fiscais  ORDER BY MATRICULA DESC, NUMERO ASC;

SELECT * FROM tabela_de_produtos WHERE nome_do_produto = 'Linha Refrescante - 1 Litro - Morango/Limão';

SELECT NUMERO, SUM(QUANTIDADE) as SOMA FROM itens_notas_fiscais WHERE codigo_do_produto = '1101035' GROUP BY NUMERO ORDER BY QUANTIDADE ASC;

SELECT MAX(`QUANTIDADE`) as 'MAIOR QUANTIDADE' FROM itens_notas_fiscais WHERE `CODIGO_DO_PRODUTO` = '1101035' ;

SELECT  COUNT(*) FROM itens_notas_fiscais WHERE codigo_do_produto = '1101035' AND QUANTIDADE = 99 ;

  SELECT CPF, COUNT(*) FROM notas_fiscais
  WHERE YEAR(DATA_VENDA) = 2016
  GROUP BY CPF
  HAVING COUNT(*) > 2000;
  
  SELECT NOME, 
	CASE
		WHEN YEAR(data_de_nascimento) < 1990 THEN 'Velho' 
        WHEN YEAR(data_de_nascimento) >= 1990 AND YEAR(data_de_nascimento) <= 1995 THEN 'Jovens' 
        ELSE 'Crianças' 
        END AS "CLASSIFICAÇÃO POR IDADE", SUM(LIMITE_DE_CREDITO) as 'credito total'
        FROM tabela_de_clientes
        where DATE(DATA_DE_NASCIMENTO) < 1992 
        GROUP BY NOME,
			CASE
		WHEN YEAR(data_de_nascimento) < 1990 THEN 'Velho' 
        WHEN YEAR(data_de_nascimento) >= 1990 AND YEAR(data_de_nascimento) <= 1995 THEN 'Jovens' 
        ELSE 'Crianças' 
        END;
		