#language: pt
#encode: UTF-8

Funcionalidade: Comprar produto na vitrine
	Comprar produto no Extra
	calculando o frete e validando opções de frete
	e nao escolher opções de garantia

	Cenario:  Comprar produto aleatorio da vitrine
		Dado que estou acessando a pagina do produto eu clico em comprar
		Entao digito o CEP e calculo o frete validando as opções de envio
		E continuo com o processo de checkout
		#E verificar se usuario tem cadastro, se tiver logar normalmente e concluir compra se não obter, registrar usuario e continuar para o processo de pagamento
		E cadastrar usuario para continuar
		E Escolher boleto como forma de pagamento
		Entao finalizo a compra