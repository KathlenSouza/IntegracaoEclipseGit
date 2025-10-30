Create database Atividade;
Use Atividade;
create table tb_Nf (
id_nf int not null,
id_item int not null,
cod_prod int not null,
valor_unit double not null,
quantidade int not null,
desconto int
);
 
insert tb_Nf (id_nf,id_item, cod_prod,valor_unit, quantidade,desconto)values(1,1,1,25.00,10,5),
(1,2,2,13.50,3, null),
(1,3,3,15.00,2,null),
(1,4,4,10.00,1,null),
(1,5,5,30.00,1,null),
(2,1,3,15.00,4,null),      
(2,2,4,10.00,5,null),
(2,3,5,30.00,7,null),
(3,1,1,25.00,5,null),
(3,2,4,10.00,4,null),
(3,3,5,30.00,5,null) ,
(3,4,2,13.50,7,null),
(4,1,5,30.00,10,15),
(4,2,4,10.00,12,5),
(4,3,1,25.00,13,5),
(4,4,2,13.50,15,5),
(5,1,3,15.00,3,null),
(5,2,5,30.00,6,null),
(6,1,1,25.00,22,15),
(6,2,3,15.00,3,null),
(7,1,1,25.00,10,3),
(7,2,2,13.50,10,4),
(7,3,3,15.00,10,4),
(7,4,5,30.00,10,1);

  -- Letra A)
select * from tb_nf
where desconto is null;
  
  -- Letra B)
select *,(valor_unit - (valor_unit*(desconto/100))) as valor_vendido from tb_Nf
where desconto is not null;
   
-- Letra c)
-- desativando modo seguro
SET SQL_SAFE_UPDATES = 0;
update tb_nf
set desconto =0
where desconto is null;
-- ativando modo seguri
 SET SQL_SAFE_UPDATES = 1;
 
-- Letra d)
select *,(quantidade *valor_unit) as valor_total, 
(valor_unit - (valor_unit*(desconto/100))) as valor_vendido  from tb_Nf;
  
-- Letra e) 
select id_nf, sum(quantidade* valor_unit) as valor_total from tb_nf
group by id_nf
order by valor_total desc;
       
-- Letra f)   
select id_nf, sum(quantidade*  (valor_unit*(desconto/100))) as valor_vendido from tb_nf
group by id_nf
order by valor_vendido desc;
       
-- Letra g)
SELECT cod_prod, sum(quantidade) as quantidade_total from tb_nf
group by cod_prod
order by quantidade_total desc
limit 1;

-- Letra h)
select id_nf, cod_prod, quantidade FROM tb_nf
where quantidade >10
group by id_nf, cod_prod;
    
-- Letra i)
select  id_nf, sum(quantidade* valor_unit) as valor_total from tb_nf
group by id_nf
having sum(quantidade* valor_unit) >500
order by valor_total desc;
    
-- Letra j)
select  cod_prod, avg(desconto) as media from tb_nf
group by cod_prod; 
       
-- Letra k)
select  cod_prod, min(desconto) as menor, max(desconto) as maior,
avg(desconto) as media from tb_nf
group by cod_prod;
        
-- Letra l)    
select id_nf, count(*) as atd_itens from tb_nf
group by id_nf
having count(*) > 3;