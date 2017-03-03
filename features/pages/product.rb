class Produto < SitePrism::Page
	
#home
	set_url "http://www.extra.com.br/Eletrodomesticos/maquinadelavar/Acimade10kg/Lavadora-Brastemp-BWH12AB-12kg-Super-Filtro-Antifiapos-%E2%80%93-Branca-7880937.html?recsource=whome&rectype=w16"
	
	element :comprar_produto_botao, "a#btnAdicionarCarrinho.bt"
	element :garantia_page_botao, "div.button-panel a"
#frete
	element :calcular_frete_texto, "input[name='ctl00$Conteudo$ctl50$txtCep']"
	element :calcular_frete_botao, "input[id='btnCalculoFrete']"	
	element :envio_superexpressa_texto, "td[id='ctl00_Conteudo_ctl50_rptTipoEntregaFrete_ctl02_lblEnderecoEntrega']"
	element :envio_expressa_texto, "td[id='ctl00_Conteudo_ctl50_rptTipoEntregaFrete_ctl03_lblEnderecoEntrega']"
	element :envio_retirafacil_texto, "td[id='ctl00_Conteudo_ctl50_rptTipoEntregaFrete_ctl04_lblEnderecoEntrega']"
	element :envio_normal_texto, "td[id='ctl00_Conteudo_ctl50_rptTipoEntregaFrete_ctl05_lblEnderecoEntrega']"
	element :envio_agendada_texto, "td[id='ctl00_Conteudo_ctl50_rptTipoEntregaFrete_ctl06_lblEnderecoEntrega']"
end