#language: pt
@logingoogle
Funcionalidade: LoginGoogle
    Para que eu possa acessar o sistema Gofree 
    Sendo um usuário do Google
    Posso logar no sistema utilizando a minha conta do Google e verificar as funcionalidades

    Contexto: Login do usuário utilizando conta do Google
        Dado que estou no modal de login Google

    @logingoogle1 @login @After
    Cenário: Login do usuário utilizando conta do Google

        E que eu clico em logar com Google
        Quando logo com os dados do Google "testegofree@gmail.com" e "t.123456"
        Então  vejo  o meu nome do Google na home

    @logingoogle @login @After
    Cenário: Login Google com usuário já logado no Google

        Quando click em logar com Google
        Então  vejo  o meu nome de login do Google na home do Gofree