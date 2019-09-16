class Api::V1::DistanciasController < Api::V1::ApiController
	
  before_action :set_distancia, only: [:show, :edit, :update]
 
  def index
    @distancias = Distance.all
    render json: @distancias
  end
 
  def show
  	render json: @distancia
  end

  def buscar
     @distancia =  Distance.find_by origem: params['origem'], destino: params['destino']
    render json: @distancia
  end
  
  def update
    @distancia.update(distancia_params)
    if @distancia.save
      redirect_to action: :show, id: @distancia.id
    else
      render :edit, id: @distancia.id
    end
  end
  
  def create
    @distancia =  Distance.find_by origem: params['origem'], destino: params['destino']
    if @distancia
       @distancia.update(distancia_params) 
    else
       @distancia = Distance.new(distancia_params)
    end  
    if @distancia.save
      retorno = render json: @distancia, status: :created
      return retorno
   else
     retorno = render json: @distancia.errors, status: :unprocessable_entity
      return retorno
   end
  end
 
  private
 
  def distancia_params
       params.permit(:distancia, :origem, :destino)  
  end
 
  def set_distancia
    @distancia = Distance.find_by origem: params['origem'], destino: params['destino']
  end

end