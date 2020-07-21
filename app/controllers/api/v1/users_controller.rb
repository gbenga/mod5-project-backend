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

    def new
        user = User.new
    end

    def create
        user = User.new(user_params)
        user.password = params[:password]
        if user.valid? 
            user.save
        
            # if user
                render json: user, include: [:orders, :medicines]
            # else
            #     render json: {message: "Could not create this user"}
            # end
        end
    end

    def edit
        user = User.find_by(id: params[:id])
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(user_params)
        if user
            render json: user, include: [:orders, :medicines]
        else
            render json: {message: "Could not create this user"}
        end
    end

    #Auth
    def sign_in 
        # Try and find a user with the username we've been given
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

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :phone, :address, :allergies, :sex, :dob, :username, :password)
    end
end
