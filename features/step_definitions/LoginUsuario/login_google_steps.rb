
Dado("que estou no modal de login Google") do
  @login.load
  @login_wait_for_botao_entrar
  @login.abrirLogin
end

Dado("que eu clico em logar com Google") do
  sleep 5
  @login.btn_entrarGoogle.click
end

Quando("logo com os dados do Google {string} e {string}") do |emailgoogle, senhagoogle|
   main = page.driver.browser.window_handles.first
   popup = page.driver.browser.window_handles.last
 # Alterna o controle entre as janelas
   page.driver.browser.switch_to.window (popup)

   within_window(popup) do
       @loginGoogle.logarGoogle(emailgoogle, senhagoogle)
    sleep 8
   end
end

Então("vejo  o meu nome do Google na home") do
  find('#dropdownMenuButton')
  @home.menu1.click
  @home.btn_sair.click
end

Quando("click em logar com Google") do
  sleep 5
  @login.btn_entrarGoogle.click
end

Então("vejo  o meu nome de login do Google na home do Gofree") do
  sleep 8
  @home.menu1.click
  @home.btn_sair.click
end

