class Home < SitePrism::Page
	set_url "http://www.extra.com.br/Eletrodomesticos/maquinadelavar/Acimade10kg/Lavadora-Brastemp-BWH12AB-12kg-Super-Filtro-Antifiapos-%E2%80%93-Branca-7880937.html?recsource=whome&rectype=w16"
	element :comprar_produto_button, "a#btnAdicionarCarrinho.bt"

	element :garantia_page_button, "div.button-panel a"

	#elements :concluir_compra_button, "div.concluirCompra a"
		#def concluir
		#	self.concluir_compra_button.click.[1]
		#end
		#def garantia_page_button
		#	self.garantia_page_button.click
		#end

		#def alert_msg
		#accept_confirm msg do
    	#	click_button("a.close-arena-wrapper")
		#end

end