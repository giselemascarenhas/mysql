create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
		id bigint auto_increment,
		Area varchar(255) not null,
        Duracao varchar(255) not null,
        Nivel varchar(255) not null,
	  
   primary key(id)
);

select * from tb_categoria order by id;

create table tb_curso(
	id bigint auto_increment,
	Nome varchar(255) not null,
    Preco decimal(8,2) not null,
    Empresa varchar(255) not null,
    Presencial boolean not null,
    categoria_id bigint,
        
	primary key(id),
	foreign key(categoria_id) references tb_categoria(id)
);


insert into tb_categoria(Area, Duracao, Nivel)values("Tecnologia", "500hrs", "Técnico");
insert into tb_categoria(Area, Duracao, Nivel)values("Administração", "200hrs", "Técnico");
insert into tb_categoria(Area, Duracao, Nivel)values("Nutrição", "50hrs", "Especialização");
insert into tb_categoria(Area, Duracao, Nivel)values("Contabilidade", "100hrs", "Extensão");
insert into tb_categoria(Area, Duracao, Nivel)values("Finanças", "300hrs", "Cursos Livres");

insert into tb_curso(Nome, Preco, Empresa, Presencial, Categoria_id)values("Java", 800.00, "RocketSeat", false, 1);
insert into tb_curso(Nome, Preco, Empresa, Presencial, Categoria_id)values("Metodologias Àgeis", 50.00, "Udemy", false, 2);
insert into tb_curso(Nome, Preco, Empresa, Presencial, Categoria_id)values("Alimentação Saudável", 40.00, "UNIP", false, 3);
insert into tb_curso(Nome, Preco, Empresa, Presencial, Categoria_id)values("Contabilidade Geral", 60.00, "Contmatic", false, 4);
insert into tb_curso(Nome, Preco, Empresa, Presencial, Categoria_id)values("PHP", 800.00, "Alura", false, 1);
insert into tb_curso(Nome, Preco, Empresa, Presencial, Categoria_id)values("React", 40.00, "Udemy", false, 1);
insert into tb_curso(Nome, Preco, Empresa, Presencial, Categoria_id)values("Angular", 30.00, "Gama Academy", false, 1);
insert into tb_curso(Nome, Preco, Empresa, Presencial, Categoria_id)values("JavaScript", 100.00, "Impacta", false, 1);

select * from tb_curso order by id;

select * from tb_curso where Preco > 50.00;

select * from tb_curso where Preco between 3.00 and 60.00;

select * from tb_curso where Nome like 'J%';

select tb_curso.Nome, tb_curso.Preco from tb_curso inner join tb_categoria
on tb_curso.categoria_id = tb_categoria.id
where tb_categoria.Area = "Tecnologia";

