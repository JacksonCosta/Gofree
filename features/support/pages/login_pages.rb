
#require_relative 'sections'



class LoginPage < SitePrism::Page
      
   set_url '/'
    
   #section :hom, HomePage, '#frmLoginModal'
  
    element :imput_email, '#txtEmailLogin'
    element :imput_senha, '#txtSenha'
    element :botao_entrar, '#btnLogin'
    element :botao_login, '#lnkLoginModal' 
    element :modal_login, '#frmLoginModal'
    element :btn_entrarGoogle, '#btnGoogleLogin'
    element :btn_entrarFace, '#btnFaceLogin'
    
  
    def logar(email, senha)
      sleep 0.5
      imput_email.set email
      imput_senha.set senha
      botao_entrar.click
      
           
    end

    def abrirLogin
      botao_login.click
      
    
    end


end
