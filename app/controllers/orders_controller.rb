class OrdersController < ApplicationController
    def index
        orders = Order.all
        render json: orders, include: [:user, :pharma, :medicine]
    end

    def show
        order = Order.find_by(id: params[:id])
        if order
            render json: order, include:[:user, :pharma, :medicine]
        else
            render json: {message: "Could not find a order with this id"}
        end
    end
end
