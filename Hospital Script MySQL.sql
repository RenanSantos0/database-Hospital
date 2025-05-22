CREATE TABLE `paciente` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome_paciente` varchar(50),
  `data_nascimento` date,
  `email_paciente` varchar(50) UNIQUE,
  `cpf_paciente` char(11) UNIQUE NOT NULL,
  `rg_paciente` varchar(25) UNIQUE,
  `id_endereco` int,
  `id_convenio` int,
  `num_carteira` varchar(50)
);

CREATE TABLE `convenio` (
  `id` int PRIMARY KEY,
  `nome_convenio` varchar(50),
  `cnpj_convenio` CHAR(14),
  `tempo_carencia` int(30)
);

CREATE TABLE `endereco` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `cep` int(10),
  `rua` varchar(50),
  `bairro` varchar(50),
  `cidade` varchar(50),
  `estado` varchar(50)
);

CREATE TABLE `telefone_paciente` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `codigo_pais` int(3),
  `ddd` int(2),
  `numero` int(10),
  `id_paciente` int
);

CREATE TABLE `telefone_medico` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `codigo_pais` int(3),
  `ddd` int(2),
  `numero` int(10),
  `id_medico` int
);

CREATE TABLE `medico` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome_medico` varchar(50),
  `crm_medico` VARCHAR(20) UNIQUE NOT NULL,
  `cpf_medico` char(11) UNIQUE NOT NULL,
  `email_medico` varchar(50),
  `id_cargo` int,
  `id_endereco` int
);

CREATE TABLE `cargo` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome_cargo` varchar(50)
);

CREATE TABLE `MedicoEspecialidade` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_medico` int,
  `id_especialidade` int
);

CREATE TABLE `especialidade` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome_especialidade` varchar(50)
);

CREATE TABLE `Consulta` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_paciente` int,
  `id_medico` int,
  `data_consulta` date,
  `hora_consulta` time,
  `valor_consulta` decimal(10,2),
  `id_convenio` int
);

CREATE TABLE `receita` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_consulta` int
);

CREATE TABLE `ReceitaMedicamento` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_receita` int,
  `id_medicamento` int,
  `qtd_medicamento` int,
  `instrucoes_medicamento` varchar(200)
);

CREATE TABLE `Medicamento` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome_medicamento` varchar(50)
);

CREATE TABLE `Internacao` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `data_entrada` date,
  `data_prev_alta` date,
  `data_alta` date,
  `procedimento` varchar(200),
  `id_quarto` int,
  `id_medico` int,
  `id_paciente` int
);

CREATE TABLE `Quarto` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `num_quarto` int(2),
  `id_tipo_quarto` int
);

CREATE TABLE `TipoQuarto` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `descricao` varchar(50),
  `valor_diaria` decimal(10,2)
);

CREATE TABLE `InternacaoEnfermeiro` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `id_internacao` int,
  `id_enfermeiro` int
);

CREATE TABLE `Enfermeiro` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome_enfermeiro` varchar(50),
  `cpf_enfermeiro` char(11) UNIQUE NOT NULL,
  `coren` varchar(50)
);

ALTER TABLE `paciente` ADD FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id`);

ALTER TABLE `paciente` ADD FOREIGN KEY (`id_convenio`) REFERENCES `convenio` (`id`);

ALTER TABLE `telefone_paciente` ADD FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`);

ALTER TABLE `telefone_medico` ADD FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id`);

ALTER TABLE `medico` ADD FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id`);

ALTER TABLE `medico` ADD FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id`);

ALTER TABLE `MedicoEspecialidade` ADD FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id`);

ALTER TABLE `MedicoEspecialidade` ADD FOREIGN KEY (`id_especialidade`) REFERENCES `especialidade` (`id`);

ALTER TABLE `Consulta` ADD FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`);

ALTER TABLE `Consulta` ADD FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id`);

ALTER TABLE `Consulta` ADD FOREIGN KEY (`id_convenio`) REFERENCES `convenio` (`id`);

ALTER TABLE `receita` ADD FOREIGN KEY (`id_consulta`) REFERENCES `Consulta` (`id`);

ALTER TABLE `ReceitaMedicamento` ADD FOREIGN KEY (`id_receita`) REFERENCES `receita` (`id`);

ALTER TABLE `ReceitaMedicamento` ADD FOREIGN KEY (`id_medicamento`) REFERENCES `Medicamento` (`id`);

ALTER TABLE `Internacao` ADD FOREIGN KEY (`id_quarto`) REFERENCES `Quarto` (`id`);

ALTER TABLE `Internacao` ADD FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id`);

ALTER TABLE `Internacao` ADD FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`);

ALTER TABLE `Quarto` ADD FOREIGN KEY (`id_tipo_quarto`) REFERENCES `TipoQuarto` (`id`);

ALTER TABLE `InternacaoEnfermeiro` ADD FOREIGN KEY (`id_internacao`) REFERENCES `Internacao` (`id`);

ALTER TABLE `InternacaoEnfermeiro` ADD FOREIGN KEY (`id_enfermeiro`) REFERENCES `Enfermeiro` (`id`);
