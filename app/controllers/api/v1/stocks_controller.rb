class Api::V1::StocksController < ApplicationController
    def index
        stocks = Stock.all
        render json: stocks, include: [:pharma, :medicine]
    end
    
    def show
        stock = Stock.find_by(id: params[:id])
        if stock
            render json: stock, include:[:pharma, :medicine]
        else
            render json: {message: "Could not find a stock with this id"}
        end
    end

    def edit
        stock = Stock.find_by(id: params[:id])
    end

    def update
        stock = Stock.find_by(id: params[:id])
        stock.update(stock_params)
        if stock
            render json: stock, include: [:pharma, :medicine]
        else
            render json: {message: "Could not update this stock"}
        end
    end
    
    private
    def stock_params
        params.require(:stock).permit(:medicine_id, :pharma_id, :price, :quantity)
    end
end
