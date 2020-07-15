class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, include: [:orders]
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user
        else
            render json: {message: "Could not find a user with this id"}
        end
    end
end
