require_relative 'ui_foge'
require_relative 'files_maps'
def joga nome_jogador
   mapa = arquivo_mapa_leitura 1
   while true  
      desenha mapa
      direcao = movimento_jogador
      heroi = localizar_jogador mapa
   end
end

def inicia_jogo
   nome = inicio_pede_nome
   joga nome
end

def localizar_jogador mapa
   letra_jogador = "H"
   mapa.each_with_index do |linha_atual,linha| #for linha in 0..mapa.size-1                              
      coluna_jogador = linha_atual.index letra_jogador #linha_atual = mapa[linha]   
         if coluna_jogador
             return [linha, coluna_jogador]  #localizado
         end         
   end   
   #não localizado
end