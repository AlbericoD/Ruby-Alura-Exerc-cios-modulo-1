def inicio_recepecao
    puts "Bem vindo ao jogo da adivinhação"
    puts "Qual é o seu nome"
    nome = gets.strip
    puts "\n\n"
    puts "Começaremos o jogo, #{nome} "
    puts "\n"
end

def sorteia_numero
    puts "Escolhendo um número, no intervalo entre 0 a 150..."
    puts "\n"
    numero_sorteado = 94
    puts "Embaralhando e...."
    puts "\n"
    puts "....Escolhido, finalmente!"
    puts  " Que tal adivinhar o numero que escolhi?"
    numero_sorteado
end

def escolha_numero tentativa, limite_tentativa
    puts "\n\n"
    puts "Tentativa #{tentativa} de #{limite_tentativa}"
    puts "Entre com o número"
    puts "\n"
    chute = gets
    puts "Verificando resultados, bem, você escolheu o número : #{chute} e ..."
    chute.to_i
end

def condicao_jogo numero_sorteado, chute
    acertou = numero_sorteado == chute
    if acertou
        puts "Haha, parabéns! \n Você acertou o número secreto! :D "
        true
    else
        maior = numero_sorteado > chute
        if maior
            puts "OPS, você errou, mas posso te ajudar
            \n Dica: O numero é maior que o escolhido..."            
        else
            puts "OPS, você errou, mas posso te ajudar
            \n Dica: O numero é menor que o escolhido..."  
        end    
        false   
    end  
end

    inicio_recepecao
    numero_sorteado = sorteia_numero
    limite_tentativa = 5

    for tentativa in 1..limite_tentativa
        chute = escolha_numero tentativa, limite_tentativa
            if  condicao_jogo numero_sorteado, chute
                break
            end
    end    





