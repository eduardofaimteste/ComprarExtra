class CalcularFrete < SitePrism::Page
	element :calcular_frete_text, "input[name='ctl00$Conteudo$ctl50$txtCep']"
	element :calcular_frete_button, "input[id='btnCalculoFrete']"	
	element :envio_superexpressa_text, "td[id='ctl00_Conteudo_ctl50_rptTipoEntregaFrete_ctl02_lblEnderecoEntrega']"
	element :envio_expressa_text, "td[id='ctl00_Conteudo_ctl50_rptTipoEntregaFrete_ctl03_lblEnderecoEntrega']"
	element :envio_retirafacil_text, "td[id='ctl00_Conteudo_ctl50_rptTipoEntregaFrete_ctl04_lblEnderecoEntrega']"
	element :envio_normal_text, "td[id='ctl00_Conteudo_ctl50_rptTipoEntregaFrete_ctl05_lblEnderecoEntrega']"
	element :envio_agendada_text, "td[id='ctl00_Conteudo_ctl50_rptTipoEntregaFrete_ctl06_lblEnderecoEntrega']"
end	