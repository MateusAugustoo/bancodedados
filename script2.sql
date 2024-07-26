create database clinica;

use clinica;

create table convenio (
	codigoconvenio int primary key,
    nomeconvenio varchar(50),
    valor_plano double not null);

create table paciente (
	codigopaciente int primary key,
	nomepaciente varchar(50) not null,
	telefone varchar(15) not null,
	conveniopaciente int,
    foreign key (conveniopaciente)
    references convenio (codigoconvenio)
    on delete cascade
    on update cascade);

create table medico (
	crm int primary key,
    nomemedico varchar(50),
    especializacao varchar(50));

create table consulta (
	codigoconsulta int primary key,
    data_hora datetime,
    paciente int,
    medico int,
    foreign key (paciente) references paciente (codigopaciente)
    on delete cascade
    on update cascade,
    foreign key (medico) references medico (crm)
    on delete cascade
    on update cascade);
    
insert into convenio (codigoconvenio, nomeconvenio, valor_plano) values (1, 'unimed', 800);
insert into convenio (codigoconvenio, nomeconvenio, valor_plano) values (2, 'iternmed', 600);
insert into convenio (codigoconvenio, nomeconvenio, valor_plano) values (3, 'hapvida', 750);
insert into convenio (codigoconvenio, nomeconvenio, valor_plano) values (4, 'medplan', 850);
insert into convenio (codigoconvenio, nomeconvenio, valor_plano) values (5, 'iapep', 500);
insert into convenio (codigoconvenio, nomeconvenio, valor_plano) values (6, 'sus', 0);


insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (1, 'Mark Ronson','98989898',1);
insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (2, 'Bruno Mars','121212121',1);
insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (3, 'Henrique Dantas','32323232',1);
insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (4, 'Diego Costa','43434343',1);
insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (5, 'Guimê Coelho','87878787',2);
insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (6, 'Marcos Belutti','10101010',2);
insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (7, 'Wesley Safadão','54545454',2);
insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (8, 'Wiz Khalifa','65656565',3);
insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (9, 'Charlie Puth','60606060',3);
insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (10, 'Luan Santana','16161616',3);
insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (11, 'Adele','47474747',3);
insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (12, 'Ed Sheeran','58585858',4);
insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (13, 'André Moura','73737373',1);
insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (14, 'Tiê Tiê','71717171',4);
insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (15, 'Anitta','89898989',5);
insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (16, 'Ellie Gougding','18181818',6);
insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (17, 'Zé Felipe','818181818',5);
insert into paciente (codigopaciente, nomepaciente, telefone, conveniopaciente) values (18, 'Márcia Felipe','57575757',6);



insert into medico (crm, nomemedico, especializacao) values (2323,'Ryu','Cardiologista');
insert into medico (crm, nomemedico, especializacao) values (5454,'Kratos','Oftalmologista');
insert into medico (crm, nomemedico, especializacao) values (4242,'Ezio','Cirurgião');
insert into medico (crm, nomemedico, especializacao) values (7676,'Snake','Ortopedista');
insert into medico (crm, nomemedico, especializacao) values (9898,'Scorpion','Cardiologista');
insert into medico (crm, nomemedico, especializacao) values (4141,'Link','Oftalmologista');
insert into medico (crm, nomemedico, especializacao) values (0202,'Gordon','Cardiologista');
insert into medico (crm, nomemedico, especializacao) values (4343,'Lara Croft','Oftalmologista');
insert into medico (crm, nomemedico, especializacao) values (7272,'Sonic','Dermatologista');


insert into consulta (codigoconsulta, data_hora, paciente,medico) values (1, '2018-08-20 17:50:00',2,9898);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (2, '2018-10-20 13:27:00',4,5454);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (3, '2017-04-20 14:30:00',2,7676);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (4, '2018-11-20 11:10:00',3,2323);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (5, '2018-01-11 22:24:00',3,4242);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (6, '2018-06-15 10:10:00',4,4242);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (7, '2018-01-16 17:40:00',4,7272);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (8, '2018-07-12 05:55:00',5,2323);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (9, '2018-02-13 20:17:00',5,7676);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (10,'2018-03-22 11:15:00',6,4141);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (11, '2018-07-20 12:30:00',7,9898);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (12, '2018-06-30 13:40:00',13,5454);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (13, '2018-05-10 13:15:00',13,0202);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (14, '2017-08-20 17:30:00',8,0202);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (15, '2018-09-17 14:00:00',9,4343);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (16, '2018-03-22 19:50:00',10,9898);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (17, '2017-12-24 18:30:00',10,7272);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (18, '2018-06-24 15:10:00',11,7676);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (19, '2018-08-01 16:30:00',12,0202);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (20, '2017-04-22 15:30:00',13,7272);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (21, '2018-02-16 17:30:00',14,2323);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (22, '2018-04-20 18:30:00',15,0202);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (23, '2018-05-21 07:30:00',16,4343);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (24, '2017-09-11 15:40:00',17,7272);
insert into consulta (codigoconsulta, data_hora, paciente,medico) values (25, '2018-11-30 21:30:00',18,5454);
