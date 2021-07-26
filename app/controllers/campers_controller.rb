class CampersController < ApplicationController
    def index
        campers = Camper.all
        render json: campers
    end

    def show
        camper = Camper.find_by(params[:id])
        render json: camper, include: :activities
    end

    def create
        camper = Camper.create(camper_params)
        render json: camper, include: :activities
    end

    private
    def camper_params 
        params.require(:camper).permit(:name, :age)
    end
end


