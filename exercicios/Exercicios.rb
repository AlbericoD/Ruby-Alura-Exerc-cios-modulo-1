require_relative 'ui_exercicios'

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
    for tentativa in 1..limite_tentativa
        chute = escolha_numero chutes, tentativa, limite_tentativa
        chutes << chute
            acertou = numero_sorteado == chute
            if nome == "Alberico"
                condicao_jogo_acertou
                break
            end    
            if  acertou
                condicao_jogo_acertou
                break
            elsif numero_sorteado > chute
                condicao_jogo_errou_maior
            else
                condicao_jogo_errou_menor 
            end
    end       
end   







def jogo_de_numeros
    nome = inicio_recepecao
    nivel = nivel_dificudade
    loop do
        jogar nome, nivel
        break if nao_jogar?
    end
end
    
    




