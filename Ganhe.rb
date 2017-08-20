 def bem_vindo
   puts "Bem vindo ao jogo Caça ao coelho"
   puts "Troque pontos por prêmios"
   puts "Qual o seu nome?"
   nome = gets
end

def escolha_cartola nome_jogador
   puts "\n\n"
   puts "#{nome_jogador} vou esconder o coelho numa cartola, caso ache ele você ganha pontos"
   puts "Se errar eu retiro pontos"
   puts "\n"
   puts "Vamos lá! você TEM 1000 pontos"
   puts "Cartola 1 | Cartola 2 | Cartola 3 | Cartola 4 | Cartola 5"
   puts "Escolha.... uma, embaralhei bem"
   gets.to_i
end

def pergunta_troca nome_jogador, escolha_do_jogador 
   puts " #{nome_jogador} você escolheu a cartola #{escolha_do_jogador} \n Deseja trocar? o prêmio pode melhorar... (S/N)"
   quer_trocar = gets.to_s
   quer_trocar.strip == "S"
end

def jogar_novamente?
   puts "Quer tentar a sorte novamente? \n (S/N)"
   jogar = gets.strip
   jogar.upcase =="S" 
end

def jogando nome_jogador, escolha_do_jogador

   case escolha_do_jogador
      when 1
         puts "#{nome_jogador} você ganhou um pedaço de madeira"
      when 2 
         puts "#{nome_jogador} você ganhou....NADA"
      when 3
         puts "#{nome_jogador} você ganhou um brinco quebrado"
      when 4
         puts "#{nome_jogador} você ganhou um carro, ual"
      else      
         puts "#{nome_jogador} você ganhou um chinelo"
   end        
end

loop do
   nome_jogador = bem_vindo 
   escolha_do_jogador = escolha_cartola nome_jogador
   jogando nome_jogador, escolha_do_jogador
   break if  ! jogar_novamente?
end   