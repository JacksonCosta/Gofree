Dado("que eu clico em login") do

@login.load
@login_wait_for_botao_entrar
@login.abrirLogin
sleep 2


  
end

Quando("faço login com {string} e {string}") do |email, senha|
  @login_wait_for_imput_email
  @login.logar(email, senha)

    
end

Então("sou autenticado com sucesso") do
   sleep 1
   @home.menu1.click
   sleep 1
   @home.btn_sair.click
 
end
Então("devo ver as classes {string} e {string} e mensagem {string}") do | classe_email, classe_senha, mensagem |
  expect(@login.modal_login).to have_css("div", text: mensagem, visible: true)
  expect(@login.imput_email['class']).to include(classe_email)
  expect(@login.imput_senha['class']).to include(classe_senha)
end
