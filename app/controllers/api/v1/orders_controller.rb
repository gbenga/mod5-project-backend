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
    
    def new
        order = Order.new
    end

    def create
        order = Order.create(order_params)
        if order
            render json: order, include:[:user, :medicines, :pharmas]
        else
            render json: {message: "Could not create this order"}
        end
    end

    private
    def order_params
        params.require(:order).permit(:user_id, :delivery_date, :no_contact)
    end
end
