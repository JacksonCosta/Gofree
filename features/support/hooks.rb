Before do
    
    @login = LoginPage.new
    @home = HomePage.new
    @loginFacebook = LoginFacebook.new
    @loginGoogle = LoginGoogle.new
    
    
   page.current_window.resize_to(1920, 1080) 
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


# ===== Slavar imagens e nomea-las com os cenários =========
After do |scenario|
  screenshot = page.save_screenshot("log/screenshots/#{scenario.__id__}.png")
  embed(screenshot, "image/png", "Screenshot")
end


