create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
		id bigint auto_increment,
        Tipo varchar(255) not null,
        utilidade varchar(255) not null,
        generico boolean not null,
	  
   primary key(id)
);

create table tb_produto(
	id bigint auto_increment,
	Nome varchar(255) not null,
    Preco decimal(8,2) not null,
    Peso varchar(255) not null,
    Fabricante varchar(255) not null,
    Disponivel boolean not null,
    categoria_id bigint,
        
	primary key(id),
	foreign key(categoria_id) references tb_categoria(id)
);

select * from tb_categoria;

insert into tb_categoria(Tipo, utilidade, generico)values("Medicamentos", "Dor de Cabeça", false);
insert into tb_categoria(Tipo, utilidade, generico)values("Cosméticos", "Cuidado com Cabelo", true);
insert into tb_categoria(Tipo, utilidade, generico)values("Ortopédicos", "Torção", false);
insert into tb_categoria(Tipo, utilidade, generico)values("Medicamentos", "Azia", true);
insert into tb_categoria(Tipo, utilidade, generico)values("Higiente", "Bebês", false);

insert into tb_produto(Nome, Preco, Peso, Fabricante, Disponivel, Categoria_id)values("Dipirona", 3.00, "500mg", "Aché", true, 1);
insert into tb_produto(Nome, Preco, Peso, Fabricante, Disponivel, Categoria_id)values("Shampoo byoung", "100.00", "150ml", "byoung", true, 2);
insert into tb_produto(Nome, Preco, Peso, Fabricante, Disponivel, Categoria_id)values("Faixa Compressora", "50.00", "100gr", "Ideal", true, 3);
insert into tb_produto(Nome, Preco, Peso, Fabricante, Disponivel, Categoria_id)values("Pantoprazol", "80.00", "100mg", "EMS", true, 1);
insert into tb_produto(Nome, Preco, Peso, Fabricante, Disponivel, Categoria_id)values("Shampoo Johnson & Johnson", "25.00", "300ml", "J&J", true, 1);

select * from tb_produto where Preco > 50.00;

select * from tb_produto where Preco between 3.00 and 60.00;

select * from tb_produto where Fabricante like 'B%';

select tb_produto.Nome, tb_categoria.Tipo from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.Tipo = "Medicamentos";