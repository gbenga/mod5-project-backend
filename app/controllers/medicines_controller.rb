class MedicinesController < ApplicationController
    def index
        medicines = Medicine.all
        render json: medicines, include: [:pharma]
    end


    def show
        medicine = Medicine.find_by(id: params[:id])
        if medicine
            render json: medicine, include:[:pharma]
        else
            render json: {message: "Could not find a medicine with this id"}
        end
    end
end
