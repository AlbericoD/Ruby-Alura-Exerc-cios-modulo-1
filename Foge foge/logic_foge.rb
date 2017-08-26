require_relative 'ui_foge'
require_relative 'files_maps'

def joga nome_jogador
    mapa = arquivo_mapa_leitura 1
    while true  
        desenha mapa
        direcao = movimento_jogador
        heroi = localizar_jogador mapa       
        nova_posicao = nova_posicao_jogador heroi, direcao
        if !posicao_valida_jogador? mapa, nova_posicao
            next
        end
        mapa[heroi[0]] [heroi[1]] = " "
        mapa[nova_posicao[0]] [nova_posicao[1]] = "H"
    end
end

def inicia_jogo
    nome = inicio_pede_nome
    joga nome
end

def localizar_jogador mapa
    letra_jogador = "H"
    mapa.each_with_index do |linha_atual,linha|                            
    coluna_jogador = linha_atual.index letra_jogador    
        if coluna_jogador
            return [linha, coluna_jogador]
        end         
    end   
   #não localizado
end

def nova_posicao_jogador heroi, direcao   
    heroi = heroi.dup
    case direcao
        when "W"
            heroi[0] -= 1
        when "S"
            heroi[0] += 1
        when "A"
            heroi[1] -= 1
        when "D"
            heroi[1] += 1    
    end 
    heroi
end

def posicao_valida_jogador? mapa, posicao
    linhas = mapa.size
    colunas = mapa[0].size

    limite_linha = posicao[0] < 0 || posicao[0] >= linhas
    limite_coluna = posicao[1] < 0 || posicao[1] >= colunas

    if limite_linha || limite_coluna  
        return false
    elsif mapa[posicao[0]][posicao[1]] == "X"    
        return false 
    else
    true
    end
end
