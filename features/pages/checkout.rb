class Checkout < SitePrism::Page
	

	#====================[USUARIO NÃO CADASTRADO]==========================
	
	element :nao_cadastrado_checkbox, "input[id='rbNaoCadastrado']"
	element :nao_cadastrado_botao, "input[id=btnClienteLogin"
	
	#======================[CADASTRO USUARIO]============================
	
	element :cadastro_nome_texto, "input[id='NomeCompleto']"
	element :cadastro_cpf_texto, "input[id='Cpf']"
	#elemento abaixo é para escolher tipo de telefone1
	#element :nao_cadastrado_tipo_telefone1_combo "input[id='TipoFone1']"
	element :cadastro_ddd_telefone1_texto, "input[id='Telefone1DDDPF']"
	element :cadastro_telefone1_texto, "input[id='Telefone1PF']"
	#elemento abaixo é para escolher tipo de telefone2
	#element :nao_cadastrado_tipo_telefone2_combo "input[id='TipoFone2']"
	element :cadastro_ddd_telefone2_texto, "input[id='Telefone2DDDPF']"
	element :cadastro_telefone2_texto, "input[id='Telefone2PF']"	
	element :cadastro_nascimento_dia_texto, "input[id='DataNascimentoDia']"
	element :cadastro_nascimento_mes_texto, "input[id='DataNascimentoMes']"
	element :cadastro_nascimento_ano_texto, "input[id='DataNascimentoAno']"
	
	element :cadastro_sexo_checkbox, "label.sexoM input#Sexo"
	
	element :cadastro_email_texto, "input[id='Email']"
	element :cadastro_confirmacao_email_texto, "input[id='ConfirmarEmail']"
	element :cadastro_senha_texto, "input[id='Senha']"
	element :cadastro_confirmacao_senha_texto, "input[id='ConfirmarSenha']"

	element :cadastro_usuario_botao, "input[id='btnClienteSalvar']"

	#=========================[CADASTRO ENDEREÇO]============================

	element :endereco_cep_texto, "input[id='Cep']"
	element :endereco_nome_texto, "input[id='Nome']"
	element :endereco_destinatario_texto, "input[id='Destinatario']"
	
	#element :endereco_rua_texto, "input[id='Rua']"
	element :endereco_numero_texto, "input[id='Numero']"
	element :endereco_complemento_texto, "input[id='Complemento']"
	#element :endereco_bairro_texto, "input[id='Bairro']"
	#element :endereco_municipio_texto, "input[id='Municipio']"
	#element :endereco_estado_texto, "input[id='Estado']"
	element :endereco_pontoreferencia_texto, "input[id='PontoReferencia']"
	element :endereco_numero_texto, "input[id='Numero']"
	element :endereco_salvar_botao, "input[data-id='endereco_cadastro_salvar']"

	element :endereco_cadastro_confirmacao_texto, "div.addressee"

	#==========================[TIPO DE ENTREGA]============================

	element :endereco_tipoentrega_checkbox, "p.grp.tEntrega.normal input"
	element :endereco_tipoentrega_botao, "input[data-id='endereco_salvar']"

	#=========================[TIPO DE PAGAMENTO]============================

	element :pagamento_boleto_botao, "li.boleto"
	element :pagamento_continuar_botao, "input[id='btPagBoleto']"

	element :pagamento_confirmacao_botao, "button[id='btFinalizarCompra']"


	def cadastro_usuario_checkout(nome, cpf,  ddd1, telefone1, ddd2, telefone2, nascimentoDia, nascimentoMes, nascimentoAno, email, senha)
		cadastro_nome_texto.set nome
		cadastro_cpf_texto.set cpf
		cadastro_ddd_telefone1_texto.set ddd1
		cadastro_telefone1_texto.set telefone1
		cadastro_ddd_telefone2_texto.set ddd2
		cadastro_telefone2_texto.set telefone2
		cadastro_nascimento_dia_texto.set nascimentoDia
		cadastro_nascimento_mes_texto.set nascimentoMes
		cadastro_nascimento_ano_texto.set nascimentoAno
		cadastro_email_texto.set email
		cadastro_confirmacao_email_texto.set email
		cadastro_senha_texto.set senha
		cadastro_confirmacao_senha_texto.set senha
		cadastro_usuario_botao.click
	end
	
	def cadastro_endereco_checkout(cep, nome, destinatario, rua, complemento, bairro, municipio, pontoreferencia, numero)
		endereco_cep_texto.set cep
		endereco_nome_texto.set nome
		endereco_destinatario_texto.set destinatario
		#endereco_rua_texto.set rua
		endereco_complemento_texto.set complemento
		#endereco_bairro_texto.set bairro
		#endereco_municipio_texto.set municipio
		#cadastro_estado_texto.set estado
		endereco_pontoreferencia_texto.set pontoreferencia
		endereco_numero_texto.set numero
		endereco_salvar_botao.click
	end

end