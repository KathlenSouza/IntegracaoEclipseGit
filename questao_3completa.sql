-- Questao 3
-- criando tabela (Rafaela)
create database atv;
use  atv;
CREATE TABLE alunos (
	mat VARCHAR (100) PRIMARY KEY,
	nome VARCHAR(100),
	endereço VARCHAR(100),
	cidade VARCHAR(100)
);
CREATE TABLE disciplinas (
	cod_disc VARCHAR (100) PRIMARY KEY,
	nome_disc VARCHAR(100),
	carga_hor VARCHAR(100)
);
CREATE TABLE professores (
	cod_prof INT PRIMARY KEY,
	nome VARCHAR(100),
	endereço VARCHAR(100),
	cidade VARCHAR(100)
);
CREATE TABLE  turma (
	cod_disc VARCHAR (100),
	cod_turma INT,
	cod_prof INT,
	ano int,
    horario VARCHAR(100),
    primary key (cod_disc, cod_turma, cod_prof, ano),
		 foreign key (cod_disc) references disciplinas (cod_disc),
		 foreign key (cod_prof) references professores (cod_prof)
);

CREATE TABLE historico (
	mat VARCHAR (100) ,
	cod_disc VARCHAR (100),
	cod_turma INT,
	cod_prof INT,
	ano INT,
	frequencia VARCHAR (100),
	nota double,
   PRIMARY KEY (mat, cod_disc, cod_turma, cod_prof, ano),
		foreign key (mat) references alunos (mat),
		foreign key (cod_disc, cod_turma, cod_prof, ano) references turma (cod_disc, cod_turma, cod_prof, ano)
);


-- inserindo DADOS (Rafaela e Kathlen)

insert into alunos values('2015010101', 'JOSE DE ALENCAR', 'RUA DAS ALMAS', 'NATAL');
insert into alunos values('2015010102', 'JOÃO JOSÉ', 'AVENIDA RUY CARNEIRO', 'JOÃO PESSOA');
insert into alunos values('2015010103', 'MARIA JOAQUINA', 'RUA CARROSSEL', 'RECIFE');
insert into alunos values('2015010104', 'MARIA DAS DORES', 'RUA DAS LADEIRAS', 'FORTALEZA');
insert into alunos values('2015010105', 'JOSUÉ CLAUDINO DOS SANTOS', 'CENTRO', 'NATAL');
insert into alunos values('2015010106', 'MARGARETHE DOS SANTOS', 'CENTRO', 'SANTA CATARINA');


insert into disciplinas values('BD', 'BANCO DE DADOS', 100);
insert into disciplinas values('POO', 'PROGRAMAÇÃO COM ACESSO A BANCO DE DADOS', 100);
insert into disciplinas values('WEB', 'AUTORIA WEB', 50);
insert into disciplinas values('ENG', 'ENGENHARIA DE SOFTWARE', 80);


insert into professores values(212131, 'FABRICIO FERREIRA', 'RUA MANAÍRA', 'JOÃO PESSOA');
insert into professores values(122135, 'ADORILSON BEZERRA', 'AVENIDA SALGADO FILHO', 'SANTA CATARINA');
insert into professores values(192011, 'DIEGO OLIVEIRA', 'AVENIDA ROBERTO FREIRE', 'NATAL');
insert into professores values(182513, 'BIANCA OLIVEIRA', 'AVENIDA DAS ROSAS', 'SÃO PAULO');



insert into turma values('BD', 1, 212131, 2015, '11H-12H');
insert into turma values('BD', 2, 212131, 2015, '13H-14H');
insert into turma values('POO', 1, 192011, 2015, '08H-09H');
insert into turma values('WEB', 1, 192011, 2015, '07H-08H');
insert into turma values('ENG', 1, 122135, 2015, '10H-11H');




-- BD
insert into historico values('2015010102', 'BD', 1, 212131, 2015, '85%', 7.0);
insert into historico values('2015010103', 'BD', 1, 212131, 2015, '90%', 6.5);
insert into historico values('2015010104', 'BD', 1, 212131, 2015, '75%', 4.0);
insert into historico values('2015010105', 'BD', 2, 212131, 2015, '60%', 5.5);
insert into historico values('2015010106', 'BD', 2, 212131, 2015, '95%', 8.0);
-- POO
insert into historico values('2015010101', 'POO', 1, 192011, 2015, '88%', 7.5);
insert into historico values('2015010102', 'POO', 1, 192011, 2015, '76%', 6.5);
insert into historico values('2015010103', 'POO', 1, 192011, 2015, '82%', 9.0);
insert into historico values('2015010104', 'POO', 1, 192011, 2015, '78%', 5.0);
insert into historico values('2015010105', 'POO', 1, 192011, 2015, '92%', 8.5);
insert into historico values('2015010106', 'POO', 1, 192011, 2015, '69%', 7.0);
-- WEB
insert into historico values('2015010101', 'WEB', 1, 192011, 2015, '85%', 7.0);
insert into historico values('2015010102', 'WEB', 1, 192011, 2015, '93%', 9.0);
insert into historico values('2015010104', 'WEB', 1, 192011, 2015, '70%', 6.5);
insert into historico values('2015010105', 'WEB', 1, 192011, 2015, '88%', 7.5);
-- ENG
insert into historico values('2015010101', 'ENG', 1, 122135, 2015, '90%', 8.0);
insert into historico values('2015010102', 'ENG', 1, 122135, 2015, '75%', 6.0);
insert into historico values('2015010103', 'ENG', 1, 122135, 2015, '80%', 5.5);
insert into historico values('2015010104', 'ENG', 1, 122135, 2015, '60%', 4.5);
insert into historico values('2015010105', 'ENG', 1, 122135, 2015, '95%', 9.0);
insert into historico values('2015010106', 'ENG', 1, 122135, 2015, '78%', 7.5);