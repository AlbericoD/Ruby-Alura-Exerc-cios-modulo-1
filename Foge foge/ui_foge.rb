def inicio_pede_nome
   puts "Bem vindo ao jogo Foge-foge"
   puts "Qual é o seu nome?"
   nome = gets.strip
   puts "\n\n\n"
   puts "Começaremos o jogo para você #{nome}"
   nome
end

def movimento_jogador
   puts "Para onde deseja ir?"
   movimento = gets.strip.upcase
end

def desenha mapa
   puts mapa
end
