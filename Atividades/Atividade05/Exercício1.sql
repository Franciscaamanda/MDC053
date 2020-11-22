create table Curso(
	id_curso serial,
	nome_curso varchar(100) not null,
	carga_horaria smallint,
	primary key(id_curso)
);
create table Professor(
	id_professor serial,
	nome_professor varchar(100) not null,
	titulacao_professor char(3),
	primary key(id_professor)
);
create table Aluno(
	id_aluno serial,
	nome_aluno varchar(100) not null,
	email_aluno varchar(100),
	fone_contato char(14),
	primary key(id_aluno)
);
create table Turma(
	id_turma serial,
	id_curso integer not null,
	id_professor integer not null,
	id_aluno integer not null,
	data_matricula date not null,
	primary key(id_turma),
	foreign key(id_curso) references Curso(id_curso),
	foreign key(id_professor) references Professor(id_professor),
	foreign key(id_aluno) references Aluno(id_aluno)
);