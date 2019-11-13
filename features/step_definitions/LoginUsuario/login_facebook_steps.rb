Dado("que estou no modal de login") do
  @login.load
  @login_wait_for_botao_entrar
  @login.abrirLogin
end

Dado("que eu clico em logar com Facebook") do
  sleep 5
  @login.btn_entrarFace.click
  
end


Quando("logo com {string} e {string}") do |emailface, senhaface|
   main = page.driver.browser.window_handles.first
   popup = page.driver.browser.window_handles.last
  # Alterna o controle entre as janelas
  page.driver.browser.switch_to.window (popup)

  within_window(popup) do
        @loginFacebook.logarFacebook(emailface, senhaface)
    sleep 5
  end
end

Então("vejo  o meu nome na home") do
  find('#dropdownMenuButton')
  @home.menu1.click
  @home.btn_sair.click
  #expect(@home.span_nomeUsuario).to have_content 'LINDA'
end

Quando("click em logar com Facebook") do
  sleep 2
  @login.btn_entrarFace.click

end

Então("vejo  o meu nome de login do Face na home do Gofree") do
  sleep 2
  @home.menu1.click
  @home.btn_sair.click
end