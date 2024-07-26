alter table curso add cargaHoraria int;
select * from curso;

alter table departamento drop orcamento;
select * from departamento;

select * from ministra;
alter table ministra modify column semestre varchar(20);

select * from instrutor;
alter table instrutor alter salario set default 0.0;

alter table instrutor alter salario drop default;

alter table instrutor add email varchar(50) not null;
alter table instrutor alter email set default 'escola@instrutor.com';
alter table instrutor modify column email varchar(50) not null;