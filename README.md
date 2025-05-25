O Hospital Fundamental

Hospital Parte 1 - Diagrama Entidade-Relacionamento (ER):

![Hospital - ER](https://github.com/user-attachments/assets/6496af75-5ff5-4d2e-a2f5-32fc55157c45)

Hospital Parte 2 - Diagrama Entidade-Relacionamento (ER):

![Hospital - ER2](https://github.com/user-attachments/assets/1a9842d8-5d61-4b16-a46d-0515702b64e6)

Hospital Parte 3 - Alimentando o banco de dados
- Inclua ao menos dez médicos de diferentes especialidades.
- Ao menos sete especialidades (considere a afirmação de que “entre as especialidades há pediatria, clínica geral, gastrenterologia e dermatologia”).
- Inclua ao menos 15 pacientes.
- Registre 20 consultas de diferentes pacientes e diferentes médicos (alguns pacientes realizam mais que uma consulta). As consultas devem ter ocorrido entre 01/01/2015 e 01/01/2022. Ao menos dez consultas devem ter receituário com dois ou mais medicamentos.
- Inclua ao menos quatro convênios médicos, associe ao menos cinco pacientes e cinco consultas.
- Criar entidade de relacionamento entre médico e especialidade.
- Criar Entidade de Relacionamento entre internação e enfermeiro.
- Arrumar a chave estrangeira do relacionamento entre convênio e médico.
- Criar entidade entre internação e enfermeiro.
- Colocar chaves estrangeira dentro da internação (Chaves Médico e Paciente).
- Registre ao menos sete internações. Pelo menos dois pacientes devem ter se internado mais de uma vez. Ao menos três quartos devem ser cadastrados. As internações devem ter ocorrido entre 01/01/2015 e 01/01/2022.
- Considerando que “a princípio o hospital trabalha com apartamentos, quartos duplos e enfermaria”, inclua ao menos esses três tipos com valores diferentes.
- Inclua dados de dez profissionais de enfermaria. Associe cada internação a ao menos dois enfermeiros.
- Os dados de tipo de quarto, convênio e especialidade são essenciais para a operação do sistema e, portanto, devem ser povoados assim que o sistema for instalado.

Hospital Parte 4 - Alterando o banco de dados
Pensando no banco que já foi criado para o Projeto do Hospital, realize algumas alterações nas tabelas e nos dados usando comandos de atualização e exclusão:

- Adicione uma coluna “em_atividade” para os médicos, indicando se ele ainda está atuando no hospital ou não. 
- Crie um script para atualizar ao menos dois médicos como inativos e os demais em atividade.

Hospital Parte 5 - Consultas
- Todos os dados e o valor médio das consultas do ano de 2020 e das que foram feitas sob convênio.
- Todos os dados das internações que tiveram data de alta maior que a data prevista para a alta.
- Receituário completo da primeira consulta registrada com receituário associado.
- Todos os dados da consulta de maior valor e também da de menor valor (ambas as consultas não foram realizadas sob convênio).
- Todos os dados das internações em seus respectivos quartos, calculando o total da internação a partir do valor de diária do quarto e o número de dias entre a entrada e a alta.
- Data, procedimento e número de quarto de internações em quartos do tipo “apartamento”.
- Nome do paciente, data da consulta e especialidade de todas as consultas em que os pacientes eram menores de 18 anos na data da consulta e cuja especialidade não seja “pediatria”, ordenando por data de realização da consulta.
- Nome do paciente, nome do médico, data da internação e procedimentos das internações realizadas por médicos da especialidade “gastroenterologia”, que tenham acontecido em “enfermaria”.
- Os nomes dos médicos, seus CRMs e a quantidade de consultas que cada um realizou.
- Todos os médicos que tenham "Gabriel" no nome. 
- Os nomes, CREs e número de internações de enfermeiros que participaram de mais de uma internação.
