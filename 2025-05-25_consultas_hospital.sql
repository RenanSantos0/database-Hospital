
-- SELECT AVG(valor_consulta) AS media_valor_2020
-- FROM consulta
-- WHERE year(data_consulta) = 2020;

-- select avg(valor_consulta) as media_valor_convenio
-- from consulta
-- where id_convenio is not null;

-- SELECT * from internacao
-- where date(data_alta) > date(data_prev_alta);

-- select * from consulta 
-- inner join receita
-- on consulta.id = receita.id_consulta
-- inner join receitamedicamento
-- on receita.id = receitamedicamento.id_receita
-- inner join medicamento
-- on receitamedicamento.id_medicamento = medicamento.id
-- where consulta.id = 1;


-- select * from consulta
-- where id_convenio is null
-- order by valor_consulta desc
-- limit 1;

-- select * from consulta
-- where id_convenio is null
-- order by valor_consulta asc
-- limit 1;

-- select *, datediff(data_alta, data_entrada)*valor_diaria as valor_total from internacao
-- inner join tipoquarto 
-- on internacao.id_quarto = tipoquarto.id;
/*
select * from internacao
inner join tipoquarto
on internacao.id_quarto = tipoquarto.id
inner join quarto
on quarto.id_tipo_quarto = tipoquarto.id
WHERE tipoquarto.descricao = 'Apartamento';
*/
/*
select paciente.nome_paciente,
paciente.data_nascimento,
consulta.data_consulta,
especialidade.nome_especialidade,
timestampdiff(year,data_nascimento, data_consulta) as idade_na_consulta
from consulta
inner join paciente
on consulta.id_paciente = paciente.id
inner join medico
on consulta.id_medico = medico.id
inner join medicoespecialidade
on medico.id = medicoespecialidade.id_medico
inner join especialidade
on medicoespecialidade.id_especialidade = especialidade.id
where nome_especialidade != "Pediatria" and timestampdiff(year,data_nascimento, data_consulta) < 18
order by data_consulta desc;
*/

/*
select paciente.nome_paciente,
medico.nome_medico,
internacao.data_entrada,
internacao.procedimento,
especialidade.nome_especialidade
from internacao
inner join paciente
on internacao.id_paciente = paciente.id
inner join medico
on internacao.id_medico = medico.id
inner join medicoespecialidade
on medico.id = medicoespecialidade.id_medico
inner join especialidade
on medicoespecialidade.id_especialidade = especialidade.id
where nome_especialidade = "Gastroenterologia";
*/

/*
select medico.nome_medico,
medico.crm_medico,
count(consulta.id_medico) as consultas_realizadas
from medico
inner join consulta
on medico.id = consulta.id_medico
GROUP BY medico.nome_medico, medico.crm_medico;
*/

/*
select medico.id, medico.nome_medico
from medico
where nome_medico like "%Gabriel%";
*/


select enfermeiro.nome_enfermeiro,
enfermeiro.coren,
count(internacaoenfermeiro.id_enfermeiro) as internacoes_realizadas
from internacao
inner join internacaoenfermeiro
on internacao.id = internacaoenfermeiro.id_internacao
inner join enfermeiro
on enfermeiro.id = internacaoenfermeiro.id_enfermeiro
group by enfermeiro.nome_enfermeiro, enfermeiro.coren
having internacoes_realizadas > 1;
