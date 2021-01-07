Quando('eu cadastro meu usuario') do
  user.load  
  user.preencher_usuario
end

Entao('verifico se usuario foi cadastrado.') do
 @texto = find('#notice')
 expect(@texto.text).to eql 'Usuário Criado com sucesso'
end

Quando('edito um usuario') do
   user.editar_usuario
   sleep 5 
end
 
Entao('verifico se o usuario foi alterado.') do
@mensagem = find('#notice') 
expect(@mensagem.text).to eql 'Seu Usuário foi Atualizado!'
sleep 3
end
 