create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
		id bigint auto_increment,
		Descrição varchar(255) not null,
        Tipo varchar(255) not null,
        Disponível boolean not null,
	  
   primary key(id)
);

insert into tb_categoria(Descrição, Tipo, Disponível)values("Aves", "Salgada", true);
insert into tb_categoria(Descrição, Tipo, Disponível)values("Peixes", "Salgada", true);
insert into tb_categoria(Descrição, Tipo, Disponível)values("Vegetais", "Salgada", true);
insert into tb_categoria(Descrição, Tipo, Disponível)values("Suínos", "Salgada", true);
insert into tb_categoria(Descrição, Tipo, Disponível)values("Doces", "Doce", true);

select * from tb_categoria;

create table tb_pizza(
	id bigint auto_increment,
	Nome varchar(255) not null,
    Massa varchar(255) not null,
    Borda varchar(255) not null,
    Preço decimal(8,2) not null,
    Categoria_id bigint,
        
	primary key(id),
	foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_pizza(Nome, Massa, Borda, Preço, Categoria_id)values("Atum", "Média", "Catupiry", 30.00, 2);
insert into tb_pizza(Nome, Massa, Borda, Preço, Categoria_id)values("Camarão", "Fina", "Cheddar", 80.00, 2);
insert into tb_pizza(Nome, Massa, Borda, Preço, Categoria_id)values("Vegetariana", "Fina", "Sem Borda", 45.00, 3);
insert into tb_pizza(Nome, Massa, Borda, Preço, Categoria_id)values("Calabresa", "Média", "Catupiry", 40.00, 4);
insert into tb_pizza(Nome, Massa, Borda, Preço, Categoria_id)values("Aliche", "Fina", "Cheddar", 42.00, 2);
insert into tb_pizza(Nome, Massa, Borda, Preço, Categoria_id)values("Frango com Catupiry", "Grossa", "Sem borda", 42.00, 1);
insert into tb_pizza(Nome, Massa, Borda, Preço, Categoria_id)values("Sensação", "Média", "Sem borda", 60.00, 5);
insert into tb_pizza(Nome, Massa, Borda, Preço, Categoria_id)values("Prestígio", "Média", "Sem borda", 60.00, 5);


select * from tb_pizza where Preço > 45.00;

select * from tb_pizza where Preço between 29.00 and 60.00;

select * from tb_pizza where Nome like 'C%';

select tb_pizza.nome, tb_categoria.Descrição from tb_pizza
inner join tb_categoria
on tb_pizza.categoria_id = tb_categoria.id
where tb_categoria.Descrição = "Peixes";
