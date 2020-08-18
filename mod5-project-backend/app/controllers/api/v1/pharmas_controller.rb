class Api::V1::PharmasController < ApplicationController
    def index
        pharmas = Pharma.all 
        render json: pharmas, include: [:medicines, :orders]
    end

    def show
        pharma = Pharma.find_by(id: params[:id])
        if pharma
            render json: pharma, include: [:medicines, :orders]
        else
            render json: {message: "Could not find a pharma with this id"}
        end
    end
end
