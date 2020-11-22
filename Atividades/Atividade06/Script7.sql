delete from turma where id_disciplina =1;
update disciplina set id_disciplina = 3 
where nome_disciplina = 'BANCO DE DADOS I';
insert into turma(id_turma, num_periodo, id_professor, id_disciplina)
values(1, 20201, 1, 3);
insert into historico(id_historico, id_turma, id_aluno)
values(1, 1, 1);
insert into historico(id_historico, id_turma, id_aluno)
values(2, 1, 2);
insert into historico(id_historico, id_turma, id_aluno)
values(3, 1, 3);
insert into historico(id_historico, id_turma, id_aluno)
values(4, 1, 4);