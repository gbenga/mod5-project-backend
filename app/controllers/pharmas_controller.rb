class PharmasController < ApplicationController
    def index
        pharmas = Pharma.all 
        render json: pharmas, include: [:medicines]
    end

    def show
        pharma = Pharma.find_by(id: params[:id])
        if pharma
            render json: pharma
        else
            render json: {message: "Could not find a pharma with this id"}
        end
    end
end
