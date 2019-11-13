Before do
    
    @login = LoginPage.new
    @home = HomePage.new
    @loginFacebook = LoginFacebook.new
    @loginGoogle = LoginGoogle.new
     #@editar1 = Editar.new
    page.current_window.resize_to(1360, 768)
    
    
end
Before('@authSemLogin') do
    @login.load
    @login_wait_for_botao_entrar
end


Before('@auth') do
    @login.load
    @login_wait_for_botao_entrar
    @login.abrirLogin
    @login.logar('jakson.costa@qwti.com.br', '123456')
  end


After('@logout') do
    @home.bye
end

After('@FecharPopupOrg') do
    @paginaOrganizador.btn_OKMensagem.click
end

After('@FecharPopupCadIngresso') do
    @CadastrarIngresso.btn_OKMensagem.click
end

# ===== Slavar imagens e nomea-las com os cenários =========
After do |scenario|
    nome_cenario = scenario.name.tr(' ', '_').downcase!
    nome_cenario = nome_cenario.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
    screenshot = "logs/shots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Clique para ver a evidência!')
end
