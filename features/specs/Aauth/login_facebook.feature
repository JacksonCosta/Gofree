#language: pt

Funcionalidade: LoginFacebook
    Para que eu possa acessar o sistema Gofree 
    Sendo um usuári do Facebook
    Posso logar no sistema utilizando a minha conta do Facebook e verificar as funcionalidades

    Contexto: Login do usuário utilizando conta do Facebook
        Dado que estou no modal de login

    @loginface  @login @After
    Cenário: Login do usuário utilizando conta do Facebook

        E que eu clico em logar com Facebook
        Quando logo com "eschdoeofy_1522075058@tfbnw.net" e "T.123456"
        Então  vejo  o meu nome na home

    @loginface  @login @After
    Cenário: Login Facebook com usuário já logado no Face

        Quando click em logar com Facebook
        Então  vejo  o meu nome de login do Face na home do Gofree

