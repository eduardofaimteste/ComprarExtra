include LoadData

Dado(/^que estou acessando a pagina do produto eu clico em comprar$/) do
	Produto.new.load
end

Entao(/^digito o CEP e calculo o frete validando as opções de envio$/) do
	@calcularfrete = Produto.new
	@calcularfrete.calcular_frete_texto.set "04348030"
	@calcularfrete.calcular_frete_botao.click
	expect(@calcularfrete.envio_superexpressa_texto.text).to eq("Super Expressa")
	expect(@calcularfrete.envio_expressa_texto.text).to eq("Expressa")
	expect(@calcularfrete.envio_retirafacil_texto.text).to eq("Retira Fácil")
	expect(@calcularfrete.envio_normal_texto.text).to eq("Normal")
	expect(@calcularfrete.envio_agendada_texto.text).to eq("Agendada")
end

Entao(/^continuo com o processo de checkout$/) do
  	#find("div#netotiate-arena-place-offer div.close-arena-wrapp").click
  	Produto.new.comprar_produto_botao.click
 	page.driver.browser.switch_to.alert.accept
 	Produto.new.garantia_page_botao.click
 	page.first('div.concluirCompra a').click
end

Entao(/^cadastrar usuario para continuar$/) do
	Checkout.new.nao_cadastrado_checkbox.click
	Checkout.new.nao_cadastrado_botao.click
	
#Inicia o preenchimento do cadastro do usuario
	@cadastro_usuario=DadosUsuario.new.cadastro_usuario_checkout
	Checkout.new.cadastro_usuario_checkout(
		@cadastro_usuario[:nome], 
		@cadastro_usuario[:cpf], 
		@cadastro_usuario[:ddd_telefone1], 
		@cadastro_usuario[:telefone1],
		@cadastro_usuario[:ddd_telefone2], 
		@cadastro_usuario[:telefone2],
		@cadastro_usuario[:nascimentoDia],
		@cadastro_usuario[:nascimentoMes],
		@cadastro_usuario[:nascimentoAno],
		@cadastro_usuario[:email],
		@cadastro_usuario[:senha]
		)

	Checkout.new.cadastro_sexo_checkbox.click

	Checkout.new.cadastro_usuario_botao.click

#Inicia o preenchimento do cadastro do endereço
	@cadastro_endereco=DadosUsuario.new.cadastro_endereco_checkout
	Checkout.new.cadastro_endereco_checkout(
		@cadastro_endereco[:cep],
		@cadastro_endereco[:nome], 
		@cadastro_endereco[:destinatario], 
		@cadastro_endereco[:rua],
		@cadastro_endereco[:complemento],
		@cadastro_endereco[:bairro],
		@cadastro_endereco[:municipio],
		#@cadastro_endereco[:estado],
		@cadastro_endereco[:pontoreferencia],
		@cadastro_endereco[:numero]
		)
	
	Checkout.new.endereco_salvar_botao.click

  	expect(Checkout.new.endereco_cadastro_confirmacao_texto.text).to eq("Destinatário: #{@cadastro_endereco[:destinatario]}")

  	Checkout.new.endereco_tipoentrega_checkbox.click
  	Checkout.new.endereco_tipoentrega_botao.click
end

Entao(/^Escolher boleto como forma de pagamento$/) do
  	Checkout.new.pagamento_boleto_botao.click
  	assert_text('Pague com Boleto Bancário')
  	Checkout.new.pagamento_continuar_botao.click
  	
  	assert_text('Revisão')  	
  	Checkout.new.pagamento_confirmacao_botao.click
end

Entao(/^finalizo a compra$/) do
 	assert_text('Obrigado por comprar no Extra.com.br')
end
