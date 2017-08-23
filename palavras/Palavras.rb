require_relative 'ui_palavras'
def joga nome
      palavra_secreta = escolhe_palavra_secreta
      erros = 0
      chutes = []
      pontos_ate_agora = 0
 
      while erros < 5

      interface = interface_palavra chutes, palavra_secreta
      chute = chute_valido chutes, erros, pontos_ate_agora, interface 
      chutes << chute
      chutou_uma_letra = chute.size == 1
      if chutou_uma_letra        
            total_encontrado = palavra_secreta.count(chute[0])          
            if total_encontrado == 0
                  aviso_letra_falha #puts "Letra não encontrada... :/"      
                  erros += 1
            else  aviso_letra_sucesso total_encontrado #puts "Letra encontrada #{total_encontrado} vezes"
               #pontos_ate_agora += 15
            end  
      else  acertou = chute == palavra_secreta
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
      pontos_ate_agora
end

def chute_valido chutes, erros, pontos_ate_agora, interface
      fixo_menu chutes, erros , pontos_ate_agora , interface
      loop do
            chute = pede_chute 
            if chutes.include? chute
                  aviso_chute_sucesso chute                                           
            else
                 return chute
            end
      end
end

def escolhe_palavra_secreta
      escolhendo_palavra #puts "Escolhendo uma palavra secreta..."
      texto = File.read("dicionario.txt")
      lista_separada = texto.split  "\n"
      mistura_lista = rand(lista_separada.size)
      palavra_secreta = lista_separada[mistura_lista].downcase
      palavra_secreta_escolhida palavra_secreta #puts "Palavra secreta com #{palavra_secreta.size} letras.... Boa sorte!"      
end

def interface_palavra chutes, palavra_secreta
      interface = ""
      for letra in palavra_secreta.chars
            if chutes.include? letra
                  interface << letra
            else
                  interface << "_"
            end
      end
      interface
end

def salvar_pontos nome_jogador, pontos_total
      jogadores_colocacao = "#{nome_jogador} \n #{pontos_total}"
      File.write "colocacao.txt", jogadores_colocacao
end

def recuperar_pontos
      jogadores_colocacao = File.read "colocacao.txt"  
      jogadores_colocacao.split "\n"          
end

def jogo_palavras 
     nome_jogador = inicio_jogo
     pontos_total = 0
     mostrar_colocacao recuperar_pontos     
      loop do
            pontos_total += joga nome_jogador
            aviso_pontos_total pontos_total
            if recuperar_pontos[1].to_i < pontos_total
                  salvar_pontos nome_jogador, pontos_total
            end
            if nao_quer_jogar?
                  break
            end
      end
end