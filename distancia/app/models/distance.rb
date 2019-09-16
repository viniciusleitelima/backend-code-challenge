class Distance < ApplicationRecord
	validate :verifica_valor_numero
	validate :verificar_valor_origem
	validates :origem, :destino, :distancia, presence:true


	private
    def verifica_valor_numero
    	@distancia = distancia.to_f
    	if @distancia <= 0 && @distancia > 10000
    		errors.add("Valor tem que está entre 1 e 10000")		
    	end
    end  

    def verificar_valor_origem
    	@origem = origem
    	validacao = /([A-Z]{1})/
    	resul = validacao.match(origem)
    	unless resul
    		errors.add("O ponto de Origem deve ser uma letra maiuscula")
    	end
    end

    def verificar_valor_destino
    	@destino = destino
    	validacao = /([A-Z]{1})/
    	resul = validacao.match(destino)
    	unless resul
    		errors.add("O ponto de Destino deve ser uma letra maiuscula")
    	end
    end
end