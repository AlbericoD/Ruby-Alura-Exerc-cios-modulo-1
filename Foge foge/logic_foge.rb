require_relative 'ui_foge'
require_relative 'files_maps'

def joga nome_jogador
    mapa = arquivo_mapa_leitura 2
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
        mapa = move_inimigos mapa
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

def posicao_valida_inimigo mapa, novo_mapa, posicao
    posicoes =[]
    movimentos = [[+1,0],[0,+1],[0,-1],[-1,0]]
    movimentos.each do |movimento|
        nova_posicao = [posicao[0] + movimento[0], posicao[1] + movimento[1]]
        if posicao_valida_jogador?(mapa, nova_posicao) && posicao_valida_jogador?(novo_mapa, nova_posicao)
            posicoes << nova_posicao
        end
    end
    posicoes    
end

def anda_inimigo mapa, novo_mapa, linha, coluna
    posicoes = posicao_valida_inimigo mapa, novo_mapa, [linha, coluna]
    if posicoes.empty?
        return
    end 
        aleatoria = rand posicoes.size
        posicao = posicoes[aleatoria]   
        mapa[linha][coluna] = " "
        novo_mapa[posicao[0]][posicao[1]] = "F"
end

def move_inimigos mapa
    letra_inimigo = "F"
    novo_mapa = copiar_mapa mapa 
    mapa.each_with_index do |linha_atual, linha|
        linha_atual.chars.each_with_index do |letra_inimigo_atual, coluna|
            inimigo = letra_inimigo_atual == letra_inimigo 
            if  inimigo
                anda_inimigo mapa, novo_mapa, linha, coluna
            end
        end    
    end  
    novo_mapa  
end

def nova_posicao_jogador heroi, direcao   
    heroi = heroi.dup
    movimentos = {
        "W" => [-1,0],
        "S" => [+1,0],
        "A" => [0,+1],
        "D" => [0,-1]        
    }
    movimento = movimentos[direcao]
    heroi[0] += movimento[0]
    heroi[1] -= movimento[1]
    heroi
end

def posicao_valida_jogador? mapa, posicao
    linhas = mapa.size
    colunas = mapa[0].size

    limite_linha = posicao[0] < 0 || posicao[0] >= linhas
    limite_coluna = posicao[1] < 0 || posicao[1] >= colunas
    valor_posicao = mapa[posicao[0]][posicao[1]]
    if limite_linha || limite_coluna  
        return false
    elsif  valor_posicao == "X" || valor_posicao == "F"
        return false 
    else
    true
    end
end

def copiar_mapa mapa
    novo_mapa = mapa.join("\n").tr("F", " ").split ("\n")
end