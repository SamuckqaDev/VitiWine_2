create database vitiwine;
use vitiwine;
create table empresa(
	id_empresa int primary key auto_increment not null,
	Nome_empresa varchar(20) not null,
    CNPJ varchar (14) not null,
    email varchar (45) not null,
    Celular varchar(11) not null,
    Endereço varchar(45) not null
);
insert into empresa (Nome_empresa, CNPJ, email, Celular, Endereço)
values ('Uvifera', '37897456234567', 'uvifera@hotmail.com', '11984567234', 'Av. Paulista n100'),
	   ('Uvada', '47897455234568', 'uvada@hotmail.com', '11984567234', 'Av. Paula Ferreira n250'),
	   ('Uvadoce', '67835457034568', 'uvadoce@hotmail.com', '11984567234', 'Rua Ectares n80'); 	

create table Usuário(
	id_usuario int primary key auto_increment not null,
    Nome_usuario varchar(50),
    email varchar (45) not null,
    Senha varchar (10) not null,
    Celular varchar(11) not null,
    fk_empresa int,
    foreign key (fk_empresa) references empresa(id_empresa)
)auto_increment 100;

insert into Usuário (Nome_usuario, email, Senha, Celular, fk_empresa)
values ('Julio Cezar Novais', 'julio@gmail.com.br', '12345678', '11980555234', 1),
	   ('Renata Lara Novais', 'relara@hotmail.com', '87654321', '11944545951', 1),
       ('Pedro Munhoz Pereira', 'pedro@gmail.com.br', '23145678', '11978554457', 3),
       ('Cleiton Ribeiro Pereira', 'cleiton@gmail.com.br', '98765496' , '11956884451', 3),
       ('Ramon da Silva Sandoli', 'ramon@gmail.com.br', '18765496' , '11954455451', 2),
       ('Gabriel Oliveira Mendes', 'gabriel@gmail.com.br', '18710196' , '11956884451', 2);
       
create table estufa(
	id_estufa int primary key auto_increment not null,
    qtd_pes varchar(10),
    cord_A varchar(10),
    cord_B varchar(10),
    fk_empresa int,
	foreign key (fk_empresa) references empresa(id_empresa)
) auto_increment 200; 

insert into estufa (qtd_pes, cord_A, cord_B, fk_empresa)
values ('456', '55', '7010', 1),
	   ('85', '10', '1000', 2),
       ('101', '50', '6000', 1),
       ('125', '50', '200', 3);
       
select * from estufa  right join empresa on estufa.fk_empresa = empresa.id_empresa;

create table sensor(
	id_sensor int primary key auto_increment not null,
    data_instalação date,
    fk_estufa int,
    foreign key (fk_estufa) references estufa(id_estufa)
)auto_increment 300;

insert into sensor (data_instalação, fk_estufa)
values('2020-06-21', 200),
	  ('2020-06-22', 200),	 
	  ('2021-08-30', 201),
      ('2021-08-30', 201),
      ('2021-09-01', 201),
      ('2021-09-01', 201),
      ('2020-02-01', 202),
      ('2020-02-01', 202),
      ('2020-02-01', 202),
	  ('2020-02-01', 202),
      ('2020-02-01', 202);
      
create table registro(
	id_registro int primary key auto_increment,
    temperatura varchar(30),
	data_hora datetime ,
    fk_sensor int,
    foreign key (fk_sensor) references sensor(id_sensor)
)auto_increment 400;

insert into registro(temperatura, data_hora, fk_sensor)
values ('20°C', '2021-09-27 12:50:00', 300),
	   ('19°C', '2021-09-28 13:00:00', 301),
       ('25°C', '2021-09-28 13:00:00', 302),
       ('23°C', '2021-09-29 13:40:00', 303),
       ('26°C', '2021-09-28 13:00:00', 304);
       
select * from empresa;
select * from Usuário;
select * from estufa;
select * from registro;

select * from estufa  inner join empresa on estufa.fk_empresa = empresa.id_empresa;

select * from registro inner join sensor on registro.fk_sensor = sensor.id_sensor;

select * from Usuário inner join empresa on Usuário.fk_empresa = empresa.id_empresa;

select * from sensor inner join estufa on sensor.fk_estufa = estufa.id_estufa;




       
	
       
      