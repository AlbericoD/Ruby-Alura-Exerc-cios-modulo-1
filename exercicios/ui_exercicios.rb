def inicio_recepecao
   puts "Bem vindo ao jogo da adivinhação"
   puts "Qual é o seu nome"
   nome = gets.strip
   puts "\n\n"
   puts "Começaremos o jogo, #{nome} "
   puts "\n"
   nome
end

def sorteia_numero nivel_escolhido              
   puts "Escolhendo um número, no intervalo entre 1 a #{nivel_escolhido}"
   puts "\n"
   puts "Embaralhando e...."
   puts "\n"
   puts "....Escolhido, finalmente!"
   puts  " Que tal adivinhar o numero que escolhi?"
end

def escolha_numero chutes, tentativa, limite_tentativa
   puts "\n\n"
   puts "Tentativa #{tentativa} de #{limite_tentativa}"
   puts "Chutes até agora #{chutes}".strip
   puts "Entre com o número"
   puts "\n"
   chute = gets
   puts "Verificando resultados, bem, você escolheu o número : #{chute} e ..."
   chute.to_i
end

def condicao_jogo_acertou
   puts "Haha, parabéns! \n Você acertou o número secreto! :D "
end 

def condicao_jogo_errou_maior 

   puts "OPS, você errou, mas posso te ajudar
   \n Dica: O numero é maior que o escolhido..."            
end

def condicao_jogo_errou_menor
   puts "OPS, você errou, mas posso te ajudar
    \n Dica: O numero é menor que o escolhido..."  
 
end

def nivel_dificudade 
   puts "Escolha um nivel de dificudade: \n (1- fácil | 2-médio | 3 - dificil | 4- insano)"
   nivel = gets.to_i
end 

def nao_jogar?
   puts "Deseja jogar novamente? (S/N)"
   quer_jogar = gets.strip
   n_quer_jogar = quer_jogar.upcase == "N"
end 

def pontos_total pontos_ganhos
    puts "Você está com #{pontos_ganhos} pontos"
    puts "Parabéns, isso é bastante! :D"
end    

def pontos_total_inferior pontos_ganhos
    puts "Você está com #{pontos_ganhos} pontos"
    puts "OPS, isso é ruim, tente jogar novamente para subir os pontos"
end    