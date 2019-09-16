class PontoDistribuicaoController < ApplicationController
  require 'rest-client'
  require 'json'

  def index
  	resp = RestClient.get "http://localhost:3005/api/v1/distancias.json"
  	@resposta = JSON.parse(resp.body)  
  end

  def show
  end

  def new
  end

  def create
    @distancia =  params['distancia']
    @origem = params['origem']
    @destino = params['destino']
    resp = RestClient.post "http://localhost:3005/api/v1/distancias.json", {params: {'origem' => @origem, 'destino' => @destino, 'distancia' => @distancia}}
    @url = "http://localhost:3001/ponto_distribuicao/index"
    redirect_to(@url)
  end

  def distancia_params
       params.permit(:distancia, :origem, :destino)  
  end
end
