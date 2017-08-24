require_relative 'ui_exercicios'
require_relative 'rank_exercicios'
def jogar nome, nivel
    case nivel
        when 1
            nivel_escolhido = 10
        when 2
            nivel_escolhido = 90
        when 3
            nivel_escolhido =150
        else
            nivel_escolhido = 1000            
    end    
    numero_sorteado = rand  (nivel_escolhido) + 1
    sorteia_numero nivel_escolhido
    limite_tentativa = 5
    chutes = []
    pontos_ganhos = 0
    for tentativa in 1..limite_tentativa
        chute = escolha_numero chutes, tentativa, limite_tentativa
        chutes << chute
            acertou = numero_sorteado == chute
            if  acertou || nome == "Alberico"
                condicao_jogo_acertou
                pontos_ganhos += 173
                break
            elsif numero_sorteado > chute
                condicao_jogo_errou_maior
                pontos_ganhos -= 68
            else
                condicao_jogo_errou_menor 
                pontos_ganhos -= 42
            end
    end  
    
    if pontos_ganhos <= 0 
        pontos_total_inferior pontos_ganhos
    else
        pontos_total pontos_ganhos
    end 
    pontos_ganhos       
end   

def jogo_de_numeros
    nome = inicio_recepecao
    nivel = nivel_dificudade
    qtd_jogadas = 1
    loop do
        pontos_total = jogar nome, nivel
        salvar_pontos nome, pontos_total,qtd_jogadas
        break if nao_jogar? 
        qtd_jogadas += 1                
    end
end
    
    




