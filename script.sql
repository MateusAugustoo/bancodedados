create database escola;

use escola;

create table departamento (
	id_dept int auto_increment, 
	nome_dept varchar(50),
    predio varchar(50),
    orcamento double,
    primary key(id_dept))ENGINE=INNODB;


insert into departamento(nome_dept,predio) values ("Direção Geral","Sede");
insert into departamento(nome_dept,predio) values ("Protocolo","Sede");
insert into departamento(nome_dept,predio) values ("Direção Administrativa","Sede");
insert into departamento(nome_dept,predio) values ("Ciências Humanas","Anexo A");
insert into departamento(nome_dept,predio) values ("Ciências da Natureza","Anexo A");
insert into departamento(nome_dept,predio) values ("Ciências Tecnológicas","Anexo B");
insert into departamento(nome_dept,predio) values ("Ciências Agrárias","Anexo C");

create table curso(
	id_curso int auto_increment,
    titulo varchar (50),
    dept int,
    primary key (id_curso),
    foreign key (dept) references departamento (id_dept))ENGINE=INNODB;
    
insert into curso (titulo, dept) values ('Sociologia',4);
insert into curso (titulo, dept) values ('Filosofia',4);
insert into curso (titulo, dept) values ('História',4);
insert into curso (titulo, dept) values ('Matemática',5);
insert into curso (titulo, dept) values ('Computação',6);
insert into curso (titulo, dept) values ('Engenharia Elétrica',6);
insert into curso (titulo, dept) values ('Agronomia',7); 

-- drop table instrutor;
create table instrutor(
	id_instrutor int auto_increment,
    nome varchar(50) not null,
    dept int,
    salario decimal,
    primary key (id_instrutor),
    foreign key (dept) references departamento (id_dept))ENGINE=INNODB;

insert into instrutor (nome,dept,salario) values ("Paulo Gustavo",4,4000);
insert into instrutor (nome,dept,salario) values ("Caio Castro",4,4500);
insert into instrutor (nome,dept,salario) values ("Camila Pitanga",4,4300);
insert into instrutor (nome,dept,salario) values ("Anitta",5,4300);
insert into instrutor (nome,dept,salario) values ("Maiara",5,4000);
insert into instrutor (nome,dept,salario) values ("Gustavo Lima",6,2600);
insert into instrutor (nome,dept,salario) values ("Marília Mendonça",6,3000);
insert into instrutor (nome,dept,salario) values ("Lulu Santos",7,3400);
insert into instrutor (nome,dept,salario) values ("Marcia Felipe",7,2100);
insert into instrutor (nome,dept) values ('Mateus', 7);
insert into instrutor (nome,dept) values ('Maria', 6);

create table ministra(
	id_ministra int auto_increment,
    curso int,
    instrutor int,
    semestre int,
    ano int,
    primary key (id_ministra),
    foreign key (curso) references curso (id_curso),
    foreign key (instrutor) references instrutor (id_instrutor))ENGINE=INNODB;
    
insert into ministra (curso, instrutor) values (1,1);
insert into ministra (curso, instrutor) values (1,2);
insert into ministra (curso, instrutor) values (1,3);
insert into ministra (curso, instrutor) values (2,4);
insert into ministra (curso, instrutor) values (5,5);
insert into ministra (curso, instrutor) values (6,4);
insert into ministra (curso, instrutor) values (7,8);
insert into ministra (curso, instrutor) values (7,6);
insert into ministra (curso, instrutor) values (7,7);