#language: pt

Funcionalidade: Tela de Login
  Cenário: Logar a Pagina Principal

  Esquema do Cenário: Casos de Teste Com Sucesso
    Dado que o usuario esta na tela de login
    Quando preenche o campo Username com <nome> e o campo Password com <senha>
    E clica no botão de Login
    Então deve ter acesso a Pagina <titulo>
     Exemplos:
       | nome                        | senha          | titulo       |
       |"standard_user"              |"secret_sauce"  |"Products"    |
       |"performance_glitch_user"    |"secret_sauce"  |"Products"    |
       |"problem_user"               |"secret_sauce"  |"Products"    |

  Esquema do Cenário: Casos de Teste Com Falha
    Dado que o usuario esta na tela de login
    Quando preenche o campo Username com <nome> e o campo Password com <senha>
    E clica no botão de Login
    Então deve receber a <mensagem>
     Exemplos:
       | nome                        | senha          | mensagem                                                                    |
       |"locked_out_user"            |"secret_sauce"  |"Epic sadface: Sorry, this user has been locked out."                        |
       |"standard_user"              |"molhosecreto"  |"Epic sadface: Username and password do not match any user in this service"  |
       |"performance_glitch_user"    |"molhosecreto"  |"Epic sadface: Username and password do not match any user in this service"  |
       |"locked_out_user"            |"molhosecreto"  |"Epic sadface: Username and password do not match any user in this service"  |
       |"problem_user"               |"molhosecreto"  |"Epic sadface: Username and password do not match any user in this service"  |
       |"secret_sauce"               |"secret_sauce"  |"Epic sadface: Username and password do not match any user in this service"  |
       |"123456789"                  |"secret_sauce"  |"Epic sadface: Username and password do not match any user in this service"  |
       |"abcdef"                     |"secret_sauce"  |"Epic sadface: Username and password do not match any user in this service"  |
       |""                           |"secret_sauce"  |"Epic sadface: Username is required"                                         |
       |"standard_user"              |""              |"Epic sadface: Password is required"                                         |
       |"123456"                     |"123456"        |"Epic sadface: Username and password do not match any user in this service"  |
       |"abcdef"                     |"abcdef"        |"Epic sadface: Username and password do not match any user in this service"  |