
  
class LoginFacebook < SitePrism::Page

    set_url '/'

    element :link_face, '#lnkFace'
    element :imput_emailface, '#email'
    element :imput_senhaface, '#pass'
    element :modal_face, '#login_form'
    element :btn_logar, '#u_0_0'
   
   
    def logarFacebook(emailface, senhaface)
      
      imput_emailface.set emailface
      imput_senhaface.set senhaface
      btn_logar.click
      
    end

    

end
