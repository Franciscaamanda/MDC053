create table Departamento(
	codigo integer,
	nome varchar(100) not null,
	primary key(codigo)
);
create table Funcionario(
	matricula integer not null,
	nome varchar(100) not null,
	salario decimal(100) not null,
	gerente integer,
	departamento integer not null,
	primary key(matricula),
	foreign key(gerente) references Funcionario(matricula),
	foreign key(departamento) references Departamento(codigo)
);