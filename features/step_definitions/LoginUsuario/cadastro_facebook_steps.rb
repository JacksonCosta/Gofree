Dado("que estou na home") do
    @login.load
    @login_wait_for_botao_entrar
  end
  
  Quando("click em cadastrar com Facebook") do
   @home.btn_cadastroFace.click
  end
  
  Então("vejo  o meu nome de login do Facebook na home do Gofree") do
    sleep 3
    sleep 5
    @home.menu1.click
    @home.btn_sair.click
  end