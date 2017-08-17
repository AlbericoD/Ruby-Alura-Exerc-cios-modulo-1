def comeco
    puts "Bem vindo ao jogo de adivinhação"
    puts "Qual o seu nome?"
    puts "\n\n"
    nome = gets
    puts "Bem vindo ao jogo de adivinhação "+ nome
end

def escolhendo
    puts "Escolha um numero no intervalo entre 0 a 100"
    numeroSecreto = 100    
end

comeco
numero = escolhendo
maximaTentativa = 5

for tentativa in  1..maximaTentativa

    puts "\n\n"
    puts "Tentativa " + tentativa.to_s + " de "  + maximaTentativa.to_s
    puts "Escolha 1 numero"
    numeroDigitado = gets
    
    acertou = numeroDigitado.to_i == numero 
        if acertou
             puts "Parabéns, você Acertou"
             puts "Numero escolhido foi: " + numeroDigitado
             break
        else 
            if tentativa == 5
            puts
            puts "Que pena, suas chances acabaram e, você Errou"
            puts "Numero escolhido foi: " + numeroDigitado
            puts "Tente novamente outra hora"
            break
            else

                puts
                puts "Você errou mas ainda resta " + maximaTentativa.to_s + " tentativas"
                puts "Numero escolhido foi: " + numeroDigitado
                puts "Tente novamente"
            end
        end     
end


