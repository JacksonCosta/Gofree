#emailInvalidoPreCadastro
Dado("que eu clico em cadastre usando email") do
    @home.load
    @login_wait_for_botao_cadastro
    sleep 0.5
end

Quando("uso os dados {string}") do | email |
    @home.imput_emailPreCadastro.set email
    @home.btn_preCadastro.click
end

Então("não deve abrir janela de cadastro para email invalido") do
    expect(page).to have_css("div#mdlCriarConta", visible: false)
end


#validacaoAngularPreCadastro
Dado("que entro com {string} no campo de pre cadastro") do | email |
    @home.load
    @home.imput_emailPreCadastro.set email
end

Então("a validacao angular deve ser {string}") do | classe |
    expect(@home.imput_emailPreCadastro['class']).to include(classe)
end

#Geral
Dado("que devo criar conta para acessar") do
    @home.load
    @home.imput_emailPreCadastro.set 'email@valido.com'
    @home.btn_preCadastro.click
    sleep 0.4
end

#validacaoAngularModalCriarConta
Quando("entro com {string} no campo {string}") do | texto, idCampo |
    fill_in idCampo, :with => texto
end

Então("a validacao angular do campo {string} deve ser {string}") do | idCampo, classe |
    sleep 0.3
    expect(find("#"+idCampo)['class']).to include(classe)
end

#validacaoBakcendModalCriarConta
Quando("entro com os dados {string}, {string} e {string}") do | nome, email, senha |
    @home.impContaNome.set nome
    @home.impContaEmail.set email
    @home.impNovaSenha.set senha
    @home.btnRegistrarContaUsuario.click
    sleep 5
end

Então("a validacao deve ser {string}") do | validacao |
    expect(@home.mdlValidacao).to have_css("div", text: validacao, visible: true)
end

#validacaoCadastroCriadoComSucesso
Dado("que cadastrei corretamente") do 
    @home.load
    @home.imput_emailPreCadastro.set 'emailvalido1@cadastrook.com'
    @home.btn_preCadastro.click
    sleep 0.5
    @home.impContaNome.set 'nome que passa'
    @home.impNovaSenha.set '123456'
    @home.btnRegistrarContaUsuario.click
    sleep 2
    @home.btnOkModalValidacao.click
    sleep 0.5
    page.execute_script "s=$('#mdlCriarConta').modal('hide');"
    sleep 0.5
end

Quando("tento conectar no sistema sem validar email") do 
    @login.abrirLogin
    sleep 0.5
    @login.imput_email.set 'emailvalido1@cadastrook.com'
    @login.imput_senha.set '123456'
    @login.botao_entrar.click
end

Então("devo ver a mensagem de validacao") do 
    @validacao = "Você ainda não confirmou o seu cadastro, favor verifique sua caixa de e-mail."
    expect(@home.mdlValidacao).to have_css("div", text: @validacao, visible: true)
end