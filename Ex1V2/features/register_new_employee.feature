#language: pt
#utf-8
@TESTE
Funcionalidade: Registrar novo funcionario

Eu como administrador
Quero registrar um novo empregado
Para que ele tenha acesso

Contexto: 
	Dado que eu esteja no site da OrangeHRM
	E eu acesse com os dados de administrador
	E acesse a pagina de cadastro de funcionario

Esquema do Cenario: Registrar um novo empregado
	Quando cadastrado um novo "<funcionario>" "<segundonome>" 
	Entao o cadastro sera realizado  

	Exemplos:
	| funcionario | segundonome|
	| vacilao     | luis|
	| otario      | luis|