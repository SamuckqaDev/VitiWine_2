create database vitiwine;
use vitiwine;
create table empresa(
	id_empresa int primary key auto_increment not null,
	Nome_empresa varchar(20) not null,
    CNPJ varchar (14) not null,
    Celular varchar(11) not null,
    email varchar (45) not null,
    senha varchar (45) not null,
    Endereco varchar(45) null
);

create table Usuario(
	id_usuario int primary key auto_increment not null,
    Nome_usuario varchar(50),
    email varchar (45) not null,
    Senha varchar (10) not null,
    Celular varchar(11) not null,
    fk_empresa int,
    foreign key (fk_empresa) references empresa(id_empresa)
)auto_increment 100;

       
create table estufa(
	id_estufa int primary key auto_increment not null,
    qtd_pes varchar(10),
    cord_A varchar(10),
    cord_B varchar(10),
    fk_empresa int,
	foreign key (fk_empresa) references empresa(id_empresa)
) auto_increment 200; 
       
select * from estufa  right join empresa on estufa.fk_empresa = empresa.id_empresa;

create table sensor(
	id_sensor int primary key auto_increment not null,
    data_instalação date,
    fk_estufa int,
    foreign key (fk_estufa) references estufa(id_estufa)
)auto_increment 300;
      
create table registro(
	id_registro int primary key auto_increment,
    temperatura varchar(30),
	data_hora datetime ,
    fk_sensor int,
    foreign key (fk_sensor) references sensor(id_sensor)
)auto_increment 400;

select * from empresa;
select * from Usuário;
select * from estufa;
select * from registro;

select * from estufa  inner join empresa on estufa.fk_empresa = empresa.id_empresa;

select * from registro inner join sensor on registro.fk_sensor = sensor.id_sensor;

select * from Usuário inner join empresa on Usuário.fk_empresa = empresa.id_empresa;

select * from sensor inner join estufa on sensor.fk_estufa = estufa.id_estufa;

select * from estufa right join empresa on estufa.fk_empresa = empresa.id_empresa;

select * from registro right join sensor on registro.fk_sensor = sensor.id_sensor;

select * from Usuário right join empresa on Usuário.fk_empresa = empresa.id_empresa;

select * from sensor right join estufa on sensor.fk_estufa = estufa.id_estufa;

       
	
       
      