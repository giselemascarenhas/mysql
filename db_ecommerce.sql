create database db_ecommerce;

use db_ecommerce;

create table produtos(
id bigint auto_increment, 
Nome varchar(255) not null,
Categoria varchar(255) not null,
Quantidade int,
Preço decimal not null,
primary key (id)
);

insert into produtos(Nome, Categoria, Quantidade, Preço) values ("Geladeira", "Eletrodomésticos", 50, 3000.00);
insert into produtos(Nome, Categoria, Quantidade, Preço) values ("Sofá", "Móveis e Decoração", 250, 1500.00);
insert into produtos(Nome, Categoria, Quantidade, Preço) values ("Iphone 12", "Celulares", 1050, 8000.00);
insert into produtos(Nome, Categoria, Quantidade, Preço) values ("Liquidificador", "Eletroportáteis", 800, 250.00);
insert into produtos(Nome, Categoria, Quantidade, Preço) values ("Aspirador de Pó", "Eletroportátei", 200, 350.00);
insert into produtos(Nome, Categoria, Quantidade, Preço) values ("Televisão", "TV e Home Theater", 200, 2200.00);
insert into produtos(Nome, Categoria, Quantidade, Preço) values ("Samsung Galaxy S20", "Celulares", 500, 5000.00);
insert into produtos(Nome, Categoria, Quantidade, Preço) values ("Panela elétrica", "Eletroportáteis", 50, 450.00);

select * from produtos order by Categoria;

update produtos set Categoria = "Eletroportáteis" where id = 5;

Select * from produtos where Preço > 500.00 order by Preço;  
Select * from produtos where Preço < 500.00 order by Preço; 