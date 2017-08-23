def inicio_jogo
   puts "Bem vindo ao jogo da forca"
   puts "Qual o seu nome?"
   nome = gets.strip
   puts "\n\n"
   puts "Vamos iniciar o jogo #{nome}"
   nome  
end

def escolhendo_palavra
   puts "Escolhendo palavra secreta...."
end

def palavra_secreta_escolhida palavra_secreta
   puts "Palavra secreta com #{palavra_secreta.size} letras.... Boa sorte!"
   palavra_secreta
end

def nao_quer_jogar?
   puts "Deseja jogar novamente? (S/N)"
   quero_jogar = gets.strip
   nao_quero = quero_jogar.upcase == "N"
end

def fixo_menu chutes, erros , pontos_ate_agora, interface
   puts "A Palavra secreta é #{interface}"
   puts "Erros até agora : #{erros}"
   puts "Chutes até agora : #{chutes}"
   puts "Pontos até agora : #{pontos_ate_agora}"
end

def pede_chute 
   puts "\n"
   puts "Entre com uma letra ou uma palavra"
   chute = gets.strip.downcase
   puts "Será que você acertou? Sua jogada é #{chute}"
   chute
end

def aviso_chute_sucesso chute
   "Você já tentou essa letra.. #{chute}"
end

def aviso_letra_falha
   puts "Letra não encontrada..."
end

def aviso_letra_sucesso total_encontrado
   puts "Letra encontrada #{total_encontrado} vezes"
end

def aviso_palavra_sucesso
   puts "Aehooo Acertou!"
end

def aviso_palavra_falha
   "OPSSS..você Errou"
end

def aviso_pontos pontos_ate_agora
   puts "Você está com  #{pontos_ate_agora} pontos"
end

def aviso_pontos_total pontos_total
   puts "Você finalizou com #{pontos_total} pontos, parabéns"
end

def mostrar_colocacao arquivo_com_pontuacoes
   puts "Pontos acumulados anteriormente, Jogador #{arquivo_com_pontuacoes[0]} com #{arquivo_com_pontuacoes[1]} pontos!"
end