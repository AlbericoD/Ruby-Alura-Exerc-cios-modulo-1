
def arquivo_mapa_leitura numero
   arquivo = "mapa#{numero}.txt"
   texto = File.read arquivo
   mapa = texto.split "\n"
end