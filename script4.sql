select * from departamento;

alter table curso drop foreign key curso_ibfk_1;

alter table curso add foreign key (dept) references departamento(id_dept) on update cascade on delete cascade;

alter table ministra drop foreign key ministra_ibfk_1;
alter table ministra add foreign key (curso) references curso(id_curso) on update cascade on delete cascade;

alter table instrutor drop foreign key instrutor_ibfk_1;
alter table instrutor add foreign key (dept) references departamento(id_dept) on update cascade on delete cascade;

delete from departamento where predio like 'Anexo C';