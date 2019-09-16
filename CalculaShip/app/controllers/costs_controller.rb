class CostsController < ApplicationController
  require 'rest-client'

  before_action :set_cost, only: [:show, :update, :destroy]

  # GET /costs?:origem&:destino&:weight
  def index 
    @peso =  params['weight']
    @origem = params['origem']
    @destino = params['destino']
    resp = RestClient.get "http://localhost:3005/api/v1/distancias.json/buscar", {params: {'origem' => @origem, 'destino' => @destino}}
    @resposta = JSON.parse(resp.body) 
    @distancia = @resposta['distancia']
    @custo = @distancia.to_f * @peso.to_f * 0.15
    @costs = @custo

    render json: @costs
  end

  # GET /costs/1
  def show
    render json: @cost
  end

  # POST /costs
  def create
    @cost = Cost.new(cost_params)

    if @cost.save
      render json: @cost, status: :created, location: @cost
    else
      render json: @cost.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /costs/1
  def update
    if @cost.update(cost_params)
      render json: @cost
    else
      render json: @cost.errors, status: :unprocessable_entity
    end
  end

  # DELETE /costs/1
  def destroy
    @cost.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cost
      @cost = Cost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cost_params
      params.require(:cost).permit(:peso, :origem, :destino)
    end
end
