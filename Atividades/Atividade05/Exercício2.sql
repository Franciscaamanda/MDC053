create table Pessoa(
	id integer not null,
	nome varchar(100) not null,
	primary key(id)
);
create table Fisica(
	id integer not null,
	sexo char(1),
	cpf char(11) not null,
	primary key(id),
	foreign key(id) references Pessoa(id)
);
create table Juridica(
	id integer not null,
	sexo char(1),
	cnpj char(14) not null,
	primary key(id),
	foreign key(id) references Pessoa(id)
);
create table Endereco(
	id integer not null,
	logradouro varchar(100),
	numero integer default 0,
	cep char(10) not null,
	cidade varchar(30),
	uf char(2) not null,
	primary key(id),
	foreign key(id) references Pessoa(id)
);