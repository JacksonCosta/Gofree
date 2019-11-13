require_relative 'sections'

class HomePage < SitePrism::Page

	set_url '/'
	section :nav, Navbar, '#top-navigation'

	#section :meven, MeusEventoss, '#wrap'

  	element :menuBotao, '#dropdownMenuButton'
	element :minhasFranquias_btn, '#minhas-franquias'
	
    element :menu1, '#dropdownMenuButton' #id menu alterado depois da nova versão 
	element :menu, '#menu-profile'
    element :home1, '#frmLoginModal'
	element :franqueadosbtn, '#btn-menu-franqueados'
    element :menu_minhasAfiliacoes, '#minhas-afiliacoes'
    element :menuInicio, '#btn-home'
	element :menuAdm, '#menu-administrator'
	
    element :link_sobre, '#lnkSobre'
    element :link_materiais, '#lnkMateriais'
    element :link_ajuda, '#lnkAjuda'
    element :link_blog, '#lnkBlog'
    element :link_face, '#lnkFace'
    element :link_insta, '#linkInsta'
    element :link_organizadores, '#lnkOrganizadores'
	element :link_espaco, '#lnkEspaco'
	element :link_todosEventos, '#lnkTodosEventos'
	element :link_loginModal, '#lnkLoginModal'
	element :link_criarEvento, '#lnkCriarEvento'
	element :btn_cadastroFace, '#btnCadastroFace'
	element :imput_emailPreCadastro, '#txtEmailPreCadastro'
	element :btn_preCadastro, '#btnPreCadastro'
	element :btn_criarEvento, '#lnkCriarEvento'
	element :btn_criarEvento1, '#btnCriarEvento1'
	element :btn_criarEvento2, '#btnCriarEvento2'
	element :lnk_validarAcesso, '#lnkValidarAcesso'
	element :btn_saibaMais, '#btnSaibaMais'
	element :btn_todosEventos, '#btnTodosEventos'
	element :btn_newslatter, '#btnNewslatter'
	element :btn_paginaOrganizador, '#btn-paginaOrganizador'
	element :link_sobreFooter, '#lnkSobreFooter'
	element :link_plataformaFooter, '#lnkPlataformaFooter'
	element :link_espacoFooter, '#lnkEspacoFooter'
	element :link_termosFooter, '#lnkTermosFooter'
	element :link_porqueFooter, '#lnkPorqueFooter'
	element :link_custoFooter, '#lnkCustoFooter'
	element :link_meusEventosFooter, '#lnkMeusEventosFooter'
	element :link_consultorFooter, '#lnkConsultorFooter'
	element :link_eventosFooter, '#lnkEventosFooter'
	element :link_meusIngressosFooter, '#lnkMeusIngressosFooter'
	element :link_criarEventoFooter, '#lnkCriarEventoFooter'
	element :link_appIphone, '#lnkAppIphone'
	element :link_appAndroid, '#lnkAppAndroid'
	element :link_facebook, '#lnkFacebook' 
	element :link_instagram, '#lnkInstagram'
	element :link_blogFooter, '#lnkBlogFooter'
	element :span_nomeUsuario, '#lblNome'
	element :btn_meusEventos, '#btn-meusEventos'
	element :btn_meusIngressos,  '#btn_meusIngressos'
	element :link_meusIngressos, '#lnkMeusIngressos' # ==== Aparece na tela de finalizar compras
	element :mdlCriarConta, "#mdlCriarConta"
    element :impContaNome, "#ContaNome"
    element :impContaEmail, "#ContaEmail"
    element :impNovaSenha, "#novaSenha"
    element :btnRegistrarContaUsuario, "#registrarContaUsuario"
    element :mdlValidacao, "#divPopup"
	element :btnOkModalValidacao, "#btnPopupOk"
	element :btn_sair, '#lnkSair'
	element :btn_sair1, "#btn-sair"
	element :btn_loginGoogle, '#btnGoogleLogin'
	element :textoOrganizador, '#txtOrganizador'
	element :btn_minhaPagina, '#btn-menu-paginaOrganizador'
	element :menuAdm, '#menu-administrator'
	element :pesquisarEvento, '#txtNomeEvento'
	element :pesquisarAdm, "btn btn-primary btn text-uppercase mt2x"
	element :gerarIngresso, '#btn-menu-imprimirIngresso'
	element :btn_gerarIngresso, '#btnGerarIngressos'
	element :quantIng, '#txtQuantidadePDV'
	element :gerar, '.btn-success'
	element :alerta, '#swal2-content'
	element :menuTela, '#dropdown-toggle'
	element :parceiros_btn, '#btn-parceiro'
	element :encontrEvnt, '#pesquisarInput'
	element :btn_pesquisar, '#pesquisarButton'
	element :btn_chat, '.md-chat-widget-btn-container'
	


	#element :nome, 'span[id=lblNome]'
	#element :criareventoHome, 'a[href="/gofree/teste/site/eventos/novo"]'
	
    #def bye
	
    #element :nome, 'span[id=lblNome]'
	#element :criareventoHome, 'a[href="/gofree/teste/site/eventos/novo"]'



	def bye1
        menu.click
        
        btn_sair1.click
	end

    def bye
        menu1.click
        
        btn_sair.click
	end
	
	def meusEventos
		menu.click
		btn_meusEventos.click	
	end

	def meusIngressos
		menu1.click
		sleep 1
		link_meusIngressos.click
	end

	def paginaFranqueados
		menuBotao.click
		btn_meusEventos.click
		franqueadosbtn.click
	end

	def minhasFranquias
		menuBotao.click
		minhasFranquias_btn.click
	end

	def cadEquipe
		menuBotao.click
		btn_meusEventos.click
	end

	def cadCupom
		menuBotao.click
		btn_meusEventos.click
	end

	def minhaPagina
		menuBotao.click
		btn_meusEventos.click
		btn_minhaPagina.click
	end

	def admBoloDaVovo
		menuBotao.click
		menuAdm.click
		pesquisarEvento.set 'Bolo da vovo'		
	end

	def gerarIngressoo
		menuBotao.click
		btn_meusEventos.click
		gerarIngresso.click
		btn_gerarIngresso.click

	end

def gerarPDV
	find('#ddlEvento option', :text => 'Bolo da vovo').click
	find('#ddlTipoTicket option', :text => 'Ingresso PDV').click
	quantIng.set '2'
	gerar.click
	sleep 2
end

def gerarIngressoAlertaQuantidade
	find('#ddlEvento option', :text => 'Bolo da vovo').click
	find('#ddlTipoTicket option', :text => 'Ingresso PDV').click
	quantIng.set '500'
	gerar.click
	sleep 2
end
def gerarIngressoAlertaSelecionar
	find('#ddlEvento option', :text => 'Bolo da vovo').click
	quantIng.set '500'
	gerar.click
	sleep 2
end
def eventoParticipantes
	menuBotao.click
	btn_meusEventos.click
end
def telaMeusEventos
	menuBotao.click
	btn_meusEventos.click


end


end