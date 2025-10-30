-- kathlen 
-- Letra a) corrigida

select historico.mat
from historico
inner join disciplinas on historico.cod_disc=disciplinas.cod_disc
where disciplinas.cod_disc = 'BD' AND historico.ano = 2015
and historico.nota < 5;

-- Letra b) corrigida

select historico.mat, avg(historico.nota) as media
from historico
inner join  disciplinas on  disciplinas.cod_disc = disciplinas.cod_disc
where disciplinas.cod_disc = 'POO' and historico.ano = 2015
group by historico.mat;

-- Letra c) corrigida

select historico.mat, avg(historico.nota) as media
from historico
inner join  disciplinas on  disciplinas.cod_disc = disciplinas.cod_disc
where disciplinas.cod_disc = 'POO' and historico.ano = 2015
group by historico.mat
HAVING media > 6;

-- Letra d) corrigida

select historico.mat
from historico
inner join turma on historico.cod_disc = turma.cod_disc 
  AND historico.cod_turma = turma.cod_turma 
  AND historico.cod_prof = turma.cod_prof 
  AND historico.ano = turma.ano
WHERE turma.horario IN ('08H-09H', '09H-10H', '10H-11H', '11H-12H');

-- Letra e) corrigida

select count(nome) as qntAlunos 
from alunos
where cidade <> 'Natal';