class Checkout < SitePrism::Page
	element :nao_cadastrado_checkbox, "input[id='rbNaoCadastrado']"
	element :nao_cadastrado_button, "input[id=btnClienteLogin"

	element :nao_cadastrado_nome_text, "input[id='NomeCompleto']"
	element :nao_cadastrado_cpf_text, "input[id='Cpf']"
	
	#elemento abaixo é para escolher tipo de telefone1
	#element :nao_cadastrado_tipo_telefone1_combo "input[id='TipoFone1']"
	
	element :nao_cadastrado_ddd_telefone1_text, "input[id='Telefone1DDDPF']"
	element :nao_cadastrado_telefone1_text, "input[id='Telefone1PF']"
	
	#elemento abaixo é para escolher tipo de telefone2
	#element :nao_cadastrado_tipo_telefone2_combo "input[id='TipoFone2']"
	
	element :nao_cadastrado_ddd_telefone2_text, "input[id='Telefone2DDDPF']"
	element :nao_cadastrado_telefone2_text, "input[id='Telefone2PF']"
	
	element :nao_cadastrado_nascimento_dia_text, "input[id='DataNascimentoDia']"
	element :nao_cadastrado_nascimento_mes_text, "input[id='DataNascimentoMes']"
	element :nao_cadastrado_nascimento_ano_text, "input[id='DataNascimentoAno']"
	
	element :nao_cadastrado_email_text, "input[id='']"
	element :nao_cadastrado_confirmacao_email_text, "input[id='']"

	element :nao_cadastrado_senha_text, "input[id='']"
	element :nao_cadastrado_confirmacao_senha_text, "input[id='']"


	element :cadastrar_usuario_button, "input[id='btnClienteSalvar']"

	def nao_cadastrado_form(nome, cpf,  ddd1, telefone1, ddd2, telefone2, nascimentoDia, nascimentoMes, nascimentoAno, email, senha)
		nao_cadastrado_nome_text.set nome
		nao_cadastrado_cpf_text.set cpf
		nao_cadastrado_ddd_telefone1_text.set ddd1
		nao_cadastrado_telefone1_text.set telefone1
		nao_cadastrado_ddd_telefone2_text.set ddd2
		nao_cadastrado_telefone2_text.set telefone2
		nao_cadastrado_nascimento_dia_text.set nascimentoDia
		nao_cadastrado_nascimento_mes_text.set nascimentoMes
		nao_cadastrado_nascimento_ano_text.set nascimentoAno
		nao_cadastrado_email_text.set email
		nao_cadastrado_confirmacao_email_text.set email
		nao_cadastrado_senha_text.set senha
		nao_cadastrado_confirmacao_senha_text.set senha
		cadastrar_usuario_button.click
	end

end