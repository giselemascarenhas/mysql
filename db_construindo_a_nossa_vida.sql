create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
		id bigint auto_increment,
        Categoria varchar(255) not null,
        Tipo varchar(255) not null,
        Quantidade int,
        Disponivel boolean not null,
	  
   primary key(id)
);

insert into tb_categoria(Categoria, Tipo, Quantidade, Disponivel)values("Roupas", "Vestidos", 50, true);
insert into tb_categoria(Categoria, Tipo, Quantidade, Disponivel)values("Roupas", "Camisas", 100, true);
insert into tb_categoria(Categoria, Tipo, Quantidade, Disponivel)values("Acessórios", "óculos", 80, true);
insert into tb_categoria(Categoria, Tipo, Quantidade, Disponivel)values("Calçados", "Tênis", 200, true);
insert into tb_categoria(Categoria, Tipo, Quantidade, Disponivel)values("Calçados", "Sandália", 250, true);

select * from tb_categoria order by id;

create table tb_produto(
	id bigint auto_increment,
	Nome varchar(255) not null,
    Cor varchar(255) not null,
    Tamanho varchar(255) not null,
    Disponivel boolean not null,
    Preco decimal(8,2) not null,
    categoria_id bigint,
        
	primary key(id),
	foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto(Nome, Cor, Tamanho, Disponivel, Preco, Categoria_id)values("Vestido Florido", "Vermelho", "M", true, 50.00, 1);
insert into tb_produto(Nome, Cor, Tamanho, Disponivel, Preco, Categoria_id)values("Camiseta Estampada", "Branca", "G", true, 59.00, 4);
insert into tb_produto(Nome, Cor, Tamanho, Disponivel, Preco, Categoria_id)values("Óculos Gatinho", "Preto", "Médio", true, 40.00, 5);
insert into tb_produto(Nome, Cor, Tamanho, Disponivel, Preco, Categoria_id)values("AIR MAX", "Azul", "37", true, 800.00, 6);
insert into tb_produto(Nome, Cor, Tamanho, Disponivel, Preco, Categoria_id)values("Anabela", "Nude", "38", true, 400.00, 7);
insert into tb_produto(Nome, Cor, Tamanho, Disponivel, Preco, Categoria_id)values("Pulseira", "Colorida", "Não se aplica", true, 3.00, 5);
insert into tb_produto(Nome, Cor, Tamanho, Disponivel, Preco, Categoria_id)values("Bolsa", "Preta", "Não se aplica", true, 500.00, 5);
insert into tb_produto(Nome, Cor, Tamanho, Disponivel, Preco, Categoria_id)values("Vestido Tubinho", "Branco", "M", true, 40.00, 1);

select * from tb_produto order by id;

select * from tb_produto where Preco > 50.00;

select * from tb_produto where Preco between 3.00 and 60.00;

select * from tb_produto where Nome like 'C%';

select tb_produto.Nome, tb_produto.Preco from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.Tipo = "Vestidos";