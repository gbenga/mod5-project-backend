class Api::V1::OrdersController < ApplicationController
    def index
        orders = Order.all
        render json: orders, include: [:user, :medicines, :pharmas]
    end

    def show
        order = Order.find_by(id: params[:id])
        if order
            render json: order, include:[:user, :medicines, :pharmas]
        else
            render json: {message: "Could not find a order with this id"}
        end
    end
end
