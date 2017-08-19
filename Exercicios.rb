def inicio_recepecao
    puts "Bem vindo ao jogo da adivinhação"
    puts "Qual é o seu nome"
    nome = gets.strip
    puts "\n\n"
    puts "Começaremos o jogo, #{nome} "
    puts "\n"
end

def sorteia_numero nivel
    case nivel
        when 1 
            nivel_escolhido = 10
        when 2
            nivel_escolhido = 90
        when 3
            nivel_escolhido = 150
        else 
            nivel_escolhido = 1000
        end                
    puts "Escolhendo um número, no intervalo entre 0 a #{nivel_escolhido}"
    puts "\n"
    numero_sorteado = rand (nivel_escolhido)
    puts "Embaralhando e...."
    puts "\n"
    puts "....Escolhido, finalmente!"
    puts  " Que tal adivinhar o numero que escolhi?"
    numero_sorteado
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

def nivel_dificudade 
    puts "Escolha um nivel de dificudade: \n (1- fácil | 2-médio | 3 - dificil | 4- insano)"
    nivel = gets.to_i
end 

    inicio_recepecao
    nivel = nivel_dificudade
    numero_sorteado = sorteia_numero nivel 
    limite_tentativa = 5
    chutes = []

    for tentativa in 1..limite_tentativa
        chute = escolha_numero chutes, tentativa, limite_tentativa
        chutes << chute
            if  condicao_jogo numero_sorteado, chute
                break
            end
    end    





