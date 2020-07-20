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
            render json: {user: user, token: generate_token({id: user.id})}
        else
            #Otherwise, send back an authentication error
            render json: {message: "Failure"}
        end
    end

    def validate
        #Decode the token that it's been sent as the Authorization header in order to get the id of the logged in user
        id = decode_token
        #Use that id to find the logged in user
        user = User.find_by(id: id)
        #Respond with the user object of the logged in user and a new token from their id
        if user 
            # If it was successful, log them in
            render json: {user: user, token: generate_token({id: user.id})}
        else
            #Otherwise, send back an authentication error
            render json: {message: "Failure"}
        end
    end
end
