def salvar_pontos  nome_jogador, pontos_total, quantidade_jogadas
   pontos_arquivo = "#{nome_jogador} \n #{pontos_total} \n #{quantidade_jogadas}"
   File.write "rank_exercicios.txt", pontos_arquivo
end  