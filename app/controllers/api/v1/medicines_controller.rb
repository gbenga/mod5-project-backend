class Api::V1::MedicinesController < ApplicationController
    def index
        medicines = Medicine.all
        render json: medicines, include: [:pharmas, :orders]
    end

    def show
        medicine = Medicine.find_by(id: params[:id])
        if medicine
            render json: medicine, include:[:pharmas, :orders]
        else
            render json: {message: "Could not find a medicine with this id"}
        end
    end
end
