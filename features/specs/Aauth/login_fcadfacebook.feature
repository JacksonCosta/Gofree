
    #language: pt

Funcionalidade: LoginFacebook
    Para que eu possa acessar o sistema Gofree 
    Sendo um usuário do Facebook
    Posso logar no sistema utilizando o cadastro com facebook
    
    @loginface1 @login @After
    Cenário: Login Facebook com usuário já logado no Face
        Dado que estou na home
        Quando click em cadastrar com Facebook
        Então  vejo  o meu nome de login do Facebook na home do Gofree