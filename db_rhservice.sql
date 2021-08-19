create database db_rhservice;

use db_rhservice;

create table funcionarios(
id bigint auto_increment, 
Nome varchar(255) not null,
Função varchar(255) not null,
Salário decimal not null,
Departamento varchar(255) not null,
primary key (id)
);

insert into funcionarios(Nome, Função, Salário, Departamento) values ("Gisele", "Desenvolvedora Java", 15000.00, "TI");
insert into funcionarios(Nome, Função, Salário, Departamento) values ("Juliana", "Gestora de RH", 3000.00, "RH");
insert into funcionarios(Nome, Função, Salário, Departamento) values ("Claudia", "Auxiliar Contábil", 1500.00, "Contabilidade");
insert into funcionarios(Nome, Função, Salário, Departamento) values ("Fernando", "Assistente Financeiro", 1800.00, "Financeiro");
insert into funcionarios(Nome, Função, Salário, Departamento) values ("Danilo", "Officeboy", 1200.00, "Repartição Pública");

alter table funcionarios modify Salário decimal(8,2);

Select * from funcionarios where Salário >= 2000.00 order by Salário;  
Select * from funcionarios where Salário <= 2000.00 order by Salário; 

update funcionarios set Salário = 1300.00 where id = 5;