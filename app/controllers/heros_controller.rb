class HerosController < ApplicationController

    # GET /heroes
    def index 
        heros = Hero.all
        render json: heros,status: :ok
    end

    # GET /heroes/:id
    def show
        hero = Hero.find_by(id: params[:id])
            render json: hero,status: :ok, serializer: HeroPowerSerializer
    end
#GET /heroes/:id
def show
    @heros = Hero.find_by(id: params[:id])
    if @heros
      render json: @heros.as_json(include: {
        powers: { only: [:id, :name, :description] }
      }, only: [:id, :name, :super_name])
    else
      render json: { error: 'Hero not found' }, status: :not_found
    end
  end
end