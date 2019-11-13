#language: pt

Funcionalidade: Login no Gofree
    Para que eu possa acessar o sistema Gofree
    Sendo um usuário
    Posso logar no sistema com meus dados de acesso e verificar as funcionalidades

    @login1
    Cenário: Login do usuário com sucesso

        Dado que eu clico em login
        Quando faço login com "jakson.costa@qwti.com.br" e "123456"
        Então sou autenticado com sucesso
       

    @login
    Esquema do Cenario: Validação e exceções na tentativa de logar
        Dado que eu clico em login
        Quando faço login com "<email>" e "<senha>"
        Então devo ver as classes "<email_classe>" e "<senha_classe>" e mensagem "<mensagem>"

        Exemplos:
            | email                           | senha  | email_classe         | senha_classe         | mensagem                     |
            |                                 |        | ng-invalid-required  | ng-invalid-required  | O campo e-mail é obrigatório |
            |                                 |        | ng-invalid-required  | ng-invalid-required  | O campo senha é obrigatório  |
            |                                 | 123456 | ng-invalid-required  | ng-valid             | O campo e-mail é obrigatório |
            | jakson.costa@qwti               | 123456 | ng-invalid-pattern   | ng-valid             | O email não é válido       |                               
	
     # Esquema do Cenario: Tentativa de login
       # Dado que eu clico em login
       # Quando faço login com "<email>" e "<senha>"
       # Então devo ver a mensagem "<alerta>"

        # Exemplos:
            #| email                           | senha  | alerta                         |
            #|                                 |        | O email não pode ser vazio     |
            #| jakson.costa@qwti.com.br        |        | A seha não pode ser vazia      |
           # |                                 | 123456 | O email não pode ser vazio     |
           # | joao.dias@qwti.com.br           | 123456 | Usuário ou senha inválidos.     
#end