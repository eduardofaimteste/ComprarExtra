#language: pt
#encode: UTF-8

Funcionalidade: Comprar produto na vitrine
	Comprar produto aleatorio no Extra
	calculando o frete e validando opções de frete
	e nao escolher opções de garantia

	Cenario:  Comprar produto aleatorio da vitrine
		Dado que estou acessando o site do Extra um produto da vitrine é escolhido aleatoriamente
		#Quando validar pagina do produto quando acessado
		Entao calcular o frete validando as opções de envio
		E adicionar o produto no carrinho clicando em comprar
		E continuar sem selecionar a garantia
		Entao concluir compra
		E logar para acessar o checkout
		