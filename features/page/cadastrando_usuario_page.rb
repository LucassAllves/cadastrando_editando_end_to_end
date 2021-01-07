class User < SitePrism::Page
    set_url '/users/new'

   
    element :nome, '#user_name'
    element :sobrenome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'
    element :criar, 'input[value="Criar"]'
    element :editar, '.btn.waves-light.blue'

    def preencher_usuario
     
        nome.set 'Lucas'
        sobrenome.set 'Alves'
        email.set 'Lucas2021@gmail.com'
        endereco.set 'Rua: baltazar antonio saraiva - 598'
        universidade.set 'UMC'
        profissao.set 'QA'
        genero.set'Masculino'
        idade.set '27' 
        criar.click
    end
     
    def editar_usuario
        
        editar.click

        nome.set 'Lucas'
        sobrenome.set 'Henrique'
        email.set 'Lucas@gmail.com'
        endereco.set 'Rua: Esmeraldo antonio saraiva - 598'
        universidade.set 'Universidade de mogi'
        profissao.set 'TESTER'
        genero.set'Masculino'
        idade.set '20' 
        criar.click

        
    end

end