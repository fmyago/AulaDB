create database dbFaculdade;
use dbFaculdade;

create table tbInstrutores ( 
	id_instrutores int (11) primary key AUTO_INCREMENT not null,
    nome varchar (50),
    email varchar (50),
    valor_hora int (10),
    certificados varchar (255)
);

create table tbCursos ( 
	id_cursos int (10) primary key AUTO_INCREMENT not null,
    nome varchar (50),
    requisito varchar (255),
    carga_horaria smallint (5),
    preco double
    );

create table tbAlunos ( 
	id_alunos int (11) primary key AUTO_INCREMENT not null,
    cpf char (11),
    nome varchar (50),
    email varchar (50),
    fone char (14),
    data_nascimento date
);

create table tbTurmas ( 
	id_turmas int (10) primary key AUTO_INCREMENT not null,
    data_inicio date,
    data_final date,
    carga_horaria smallint (5)
);

create table tbMatriculas ( 
    turmas_id int (10),
    alunos_id int (11),
    data_matricula date
); 
alter table tbTurmas add column instrutores_id int (11);
alter table tbTurmas add constraint fkIndex1 foreign key (instrutores_id) references tbInstrutores (id_instrutores);
alter table tbTurmas add column cursos_id int (10);
alter table tbTurmas add constraint fkIndex2 foreign key (cursos_id) references tbCursos (id_cursos);
alter table tbmatriculas add constraint fkIndex4 foreign key (turmas_id) references tbturmas (id_turmas);
alter table tbmatriculas add constraint fkIndex5 foreign key (alunos_id) references tbalunos (id_alunos);

insert into tbInstrutores values("1", "Yago", "maranhaoyago@gmail.com", "15", "Certificado X");
insert into tbAlunos values("1", "31544441501", "Yago", "maranhaoyago@gmail.com", "96148-5585", "1995-01-27");

select * from tbInstrutores;
select * from tbAlunos;