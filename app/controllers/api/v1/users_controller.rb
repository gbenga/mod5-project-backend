class Api::V1::UsersController < ApplicationController
    def index
        users = User.all
        render json: users, include: [:orders, :medicines]
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user, include: [:orders, :medicines]
        else
            render json: {message: "Could not find a user with this id"}
        end
    end
end
