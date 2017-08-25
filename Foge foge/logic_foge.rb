require_relative 'ui_foge'
require_relative 'files_maps'
def joga nome_jogador
   mapa = arquivo_mapa_leitura 1
   while true  
      desenha mapa
      direcao = movimento_jogador
   end
end

def inicia_jogo
   nome = inicio_pede_nome
   joga nome
end

def localizar_jogador mapa
   for linha in 0..mapa.size-1 
      if mapa[linha].include? "H"
         for coluna in 0..mapa[linha].size-1
            if mapa[linha][coluna] == "H"
               #localizado
            end   
         end   
      end   
   end   
   #não localizado
end