create database db_escola;

use db_escola;

create table alunos(
id bigint auto_increment, 
Nome varchar(255) not null,
Turma varchar(255) not null,
Português decimal not null,
Matemática decimal not null,
primary key (id)
);

insert into alunos(Nome, Turma, Português, Matemática) values ("Leonardo", "2D", 6.5, 8);
insert into alunos(Nome, Turma, Português, Matemática) values ("Julia", "1C", 7, 9);
insert into alunos(Nome, Turma, Português, Matemática) values ("Ana Laura", "3A", 4, 7);
insert into alunos(Nome, Turma, Português, Matemática) values ("Beatriz", "4D", 8, 7);
insert into alunos(Nome, Turma, Português, Matemática) values ("Valentina", "2B", 5, 4);
insert into alunos(Nome, Turma, Português, Matemática) values ("Bruno", "4D", 3, 5);
insert into alunos(Nome, Turma, Português, Matemática) values ("Henrique", "1C", 6, 4);
insert into alunos(Nome, Turma, Português, Matemática) values ("Gabriel", "2D", 8, 6);
insert into alunos(Nome, Turma, Português, Matemática) values ("Lorenzo", "3A", 9, 9);

alter table alunos modify Português decimal(2,1);
alter table alunos modify Matemática decimal(2,1);

update alunos set Português = 7 where id = 1;

Select * from alunos where Português > 7 order by Português;  
Select * from alunos where Português < 7 order by Português; 

Select * from alunos where Português > 7 order by Matemática; 
Select * from alunos where Português < 7 order by Matemática;  