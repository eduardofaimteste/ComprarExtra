Dado(/^que estou acessando o site do Extra um produto da vitrine é escolhido aleatoriamente$/) do
	#visit = 'http//www.extra.com.br'
	Home.new.load
end

# Quando(/^validar pagina do produto quando acessado$/) do
#   find
# end

Entao(/^calcular o frete validando as opções de envio$/) do
	@calcularfrete = CalcularFrete.new
	@calcularfrete.calcular_frete_text.set "04348030"
	@calcularfrete.calcular_frete_button.click
	#page.should have_content ('Super Expressa')
	#assert_text('Super Expressa')
	expect(@calcularfrete.envio_superexpressa_text.text).to eq("Super Expressa")
	expect(@calcularfrete.envio_expressa_text.text).to eq("Expressa")
	expect(@calcularfrete.envio_retirafacil_text.text).to eq("Retira Fácil")
	expect(@calcularfrete.envio_normal_text.text).to eq("Normal")
	expect(@calcularfrete.envio_agendada_text.text).to eq("Agendada")

end

Entao(/^adicionar o produto no carrinho clicando em comprar$/) do
  	#find("div#netotiate-arena-place-offer div.close-arena-wrapp").click
  	Home.new.comprar_produto_button.click
 	page.driver.browser.switch_to.alert.accept
end

Entao(/^continuar sem selecionar a garantia$/) do
  	Home.new.garantia_page_button.click
end

Entao(/^concluir compra$/) do
  	page.first('div.concluirCompra a').click
  	#Home.new.concluir_compra_button	
end

Entao(/^logar para acessar o checkout$/) do
  	#assert_text('Já possui um cadastro?')
	Checkout.new.nao_cadastrado_checkbox.click
	Checkout.new.nao_cadastrado_button.click
	#Inicia o preenchimento do cadastro do usuario
	@cadastro=DadosUsuario.new.nao_cadastrado
	Checkout.new.nao_cadastrado_form(@cadastro[:nome], 
		@cadastro[:cpf], 
		@cadastro[:ddd_telefone1], 
		@cadastro[:telefone1],
		@cadastro[:ddd_telefone2], 
		@cadastro[:telefone2],
		@cadastro[:nascimentoDia],
		@cadastro[:nascimentoMes],
		@cadastro[:nascimentoAno],
		@cadastro[:email],
		@cadastro[:senha]
		)
	Checkout.new.cadastrar_usuario_button.click

end