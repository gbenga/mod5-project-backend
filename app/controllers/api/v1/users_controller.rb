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

    #Auth
    def sign_in 
        # Try and find a user with the username we've beem given
        user = User.find_by(username: params[:username])
        #If we can find them, try and authenticate that user with the password we've been given
        if user && user.authenticate(params[:password])
            # If it was successful, log them in
            render json: {user: user}
        else
            #Otherwise, send back an authentication error
            render json: {message: "Failure"}
        end
    end
end
