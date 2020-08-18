class Api::V1::OrderMedicinesController < ApplicationController
    def index
        order_medicines = OrderMedicine.all
        render json: order_medicines, include: [:order, :medicine]
    end

    def show
        order_medicine = OrderMedicine.find_by(id: params[:id])
        if order_medicine
            render json: order_medicine, include: [:order, :medicine]
        else
            render json: {message: "Could not find a order_medicine with this id"}
        end
    end
    
    def new
        order_medicine = OrderMedicine.new
    end

    def create
        order_medicine = OrderMedicine.create(order_medicine_params)
        if order_medicine
            render json: order_medicine, include: [:order, :medicine]
        else
            render json: {message: "Could not create this order_medicine"}
        end
    end

    private
    def order_medicine_params
        params.require(:order_medicine).permit(:order_id, :medicine_id)
    end
end
