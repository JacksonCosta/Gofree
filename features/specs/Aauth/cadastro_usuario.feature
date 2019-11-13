#language: pt

Funcionalidade: Cadastro
    Para que eu possa acessar o sistema Gofree
    Não sendo um usuário
    Posso criar o usuário no sistema com meus dados

    @emailInvalidoPreCadastro @login
    Esquema do Cenario: Tentativa de cadastro pela home utilizando email inválido
        Dado que eu clico em cadastre usando email
        Quando uso os dados "<email>"
        Então não deve abrir janela de cadastro para email invalido

        Exemplos:
            | email                   |
            |                         |
            | diego.vinicius@         |
            | diego.vinicius@qwti     |
            | a@w                     |

    @validacaoAngularPreCadastro @login
    Esquema do Cenario: Validação angular cadastro pela home utilizando email inválido
        Dado que entro com "<email>" no campo de pre cadastro
        Então a validacao angular deve ser "<classe>"

        Exemplos:
            | email | classe            |
            |       | ng-empty          |
            | q@w   | ng-valid-email    |
            | aaaaa | ng-invalid-email  |

    @validacaoAngularModalCriarConta @login
    Esquema do Cenario: Validação angular no formulário de cadastro
        Dado que devo criar conta para acessar
        Quando entro com "<texto>" no campo "<idCampo>"
        Então a validacao angular do campo "<idCampo>" deve ser "<classe>"

        Exemplos:
            | idCampo    | texto            | classe               |
            | ContaNome  |                  | ng-empty             |
            | ContaNome  | a                | ng-valid             |
            | ContaNome  | a                | ng-not-empty         |
            | ContaEmail |                  | ng-empty             |
            | ContaEmail | a                | ng-invalid-email     |
            | ContaEmail | a                | ng-not-empty         |
            | ContaEmail | a                | ng-invalid           |
            | ContaEmail | email@valido.com | ng-not-empty         |
            | ContaEmail | email@valido.com | ng-valid             |
            | ContaEmail | email@valido.com | ng-valid-email       |
            | novaSenha  |                  | ng-empty             |
            | novaSenha  | a                | ng-valid             |
            | novaSenha  | a                | ng-not-empty         |

    @validacaoBakcendModalCriarConta @login
    Esquema do Cenario: Criar conta e exceções do cadastro de conta
        Dado que devo criar conta para acessar
        Quando entro com os dados "<nome>", "<email>" e "<senha>"
        Então a validacao deve ser "<validacao>"

        Exemplos:
            | nome             | email               | senha  | validacao                                                                          |
            | primeiro exemplo | exemplo1@qwti.com.br| 123456 | Usuário cadastrado com sucesso. Verifique seu e-mail para confirmar o cadastro.    |
            | segundo exemplo  | exemplo1@qwti.com.br| 123456 | Não é possível concluir o cadastro. Este e-mail já está vinculado à outro usuário. |
            | a                | a@a                 | 123456 | O campo Nome é obrigatório.                                                        |
            | aaa              | a@a                 | 123456 | E-mail inválido.                                                                   |
            | aaa              | a@a                 | 1      | O campo Senha é obrigatório.                                                       |
            | aaa              | a@a.com             | 12     | A senha deve possuir no mínimo 6 caracteres.                                       |

    @validacaoCadastroCriadoComSucesso11 @login
    Cenario: Tentativa de logar com email ainda não validado
        Dado que cadastrei corretamente
        Quando tento conectar no sistema sem validar email
        Então devo ver a mensagem de validacao