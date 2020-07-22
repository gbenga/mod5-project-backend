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
end
