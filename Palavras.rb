def inicio_jogo
   puts "Bem vindo ao jogo da forca"
   puts "Qual o seu nome?"
   nome = gets.strip
   puts "\n\n"
   puts "Vamos iniciar os jogos #{nome}"
   nome  
end

def escolhe_palavra_secreta
   puts "Escolhendo uma palavra secreta..."
   palavra_secreta =  "teste"
   puts "Palavra secreta com #{palavra_secreta.size} letras.... Boa sorte!"
   palavra_secreta
end

def nao_quer_jogar?
   puts "Deseja jogar novamente? (S/N)"
   quero_jogar = gets.strip
   nao_quero = quero_jogar.upcase == "N"
end

def pede_chute chutes, erros, pontos_ate_agora
   puts "\n\n"
   puts "Erros até agora : #{erros}"
   puts "Chutes até agora : #{chutes}"
   puts "Pontos até agora : #{pontos_ate_agora}"
   puts "Entre com uma letra ou uma palavra"
   chute = gets.strip
   puts "Será que você acertou? Sua jogada é #{chute}"
   chute
end

def joga nome
   palavra_secreta = escolhe_palavra_secreta

   erros = 0
   chutes = []
   pontos_ate_agora = 0
 
   while erros < 5
      chute = pede_chute chutes, erros, pontos_ate_agora
      if chutes.include? chute
            puts "Você já tentou essa letra.. #{chute}"
            next
      end
      chutes << chute

      chutou_uma_letra = chute.size == 1

      if chutou_uma_letra        
         total_encontrado = palavra_secreta.count(chute[0])      
     
            if total_encontrado == 0
               puts "Letra não encontrada... :/"      
               erros += 1
            else 
               puts "Letra encontrada #{total_encontrado} vezes"
               pontos_ate_agora += 15
            end  
      else       
         acertou = chute == palavra_secreta
         if acertou
            puts "Aehooo Acertou!"
            pontos_ate_agora += 100
            break
         else
            puts "OPSSS..você Errou"
            pontos_ate_agora -= 30
            erros += 1
         end
      end   
   end   
   puts "Você está com  #{pontos_ate_agora} pontos"
end

nome_jogador = inicio_jogo

loop do
   joga nome_jogador
   if nao_quer_jogar?
      break
   end
end