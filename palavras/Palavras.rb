require_relative 'ui_palavras' 
def joga nome
   palavra_secreta = escolhe_palavra_secreta

   erros = 0
   chutes = []
   pontos_ate_agora = 0
 
   while erros < 5
      chute = pede_chute chutes, erros, pontos_ate_agora
      if chutes.include? chute
            aviso_chute_sucesso chute  #puts "Você já tentou essa letra.. #{chute}"
            next
      end
      chutes << chute

      chutou_uma_letra = chute.size == 1

      if chutou_uma_letra        
         total_encontrado = palavra_secreta.count(chute[0])      
     
            if total_encontrado == 0
               aviso_letra_falha #puts "Letra não encontrada... :/"      
               erros += 1
            else 
                aviso_letra_sucesso total_encontrado #puts "Letra encontrada #{total_encontrado} vezes"
               pontos_ate_agora += 15
            end  
      else       
         acertou = chute == palavra_secreta
         if acertou
            aviso_palavra_sucesso #puts "Aehooo Acertou!"
            pontos_ate_agora += 100
            break
         else
            aviso_palavra_falha #puts "OPSSS..você Errou"
            pontos_ate_agora -= 30
            erros += 1
         end
      end   
   end   
   aviso_pontos pontos_ate_agora #puts "Você está com  #{pontos_ate_agora} pontos"
end

nome_jogador = inicio_jogo

loop do
   joga nome_jogador
   if nao_quer_jogar?
      break
   end
end