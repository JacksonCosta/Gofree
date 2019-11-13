class LoginGoogle < SitePrism::Page

    set_url '/'
    element :imput_emailgoogle, '#identifierId'
    element :btn_proximo, '#identifierNext'
    element :imput_senhagoogle, 'input[name=password]'
    #element :imput_senhagoogle, '#password'
    element :btn_proximoEntrar, '#passwordNext'
    
   
   
    def logarGoogle(emailgoogle, senhagoogle)
      
      imput_emailgoogle.set emailgoogle
      btn_proximo.click
      sleep 2
      imput_senhagoogle.set senhagoogle
      #imput_senhagoogle.set senhagoogle
      btn_proximoEntrar.click
      sleep 2
            
    end

    

end