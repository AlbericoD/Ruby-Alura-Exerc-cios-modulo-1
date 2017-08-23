def salvar_pontos nome_jogador, pontos_total
   jogadores_colocacao = "#{nome_jogador} \n #{pontos_total}"
   File.write "colocacao.txt", jogadores_colocacao
end

def recuperar_pontos
   jogadores_colocacao = File.read "colocacao.txt"  
   jogadores_colocacao.split "\n"          
end