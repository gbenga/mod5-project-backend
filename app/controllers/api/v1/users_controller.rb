class Api::V1::UsersController < ApplicationController
    skip_before_action :authorised?, only: [:create, :sign_in]
    
    def index
        users = User.all
        render json: users, include: [:orders, :medicines]
    end

    def show
        user = logged_in_user
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
        if user.valid? && user.valid_password?
            user.save
            render json: user, include: [:orders, :medicines]
        else
            errors = user.errors.full_messages
            errors.push("Password is too short") if !user.valid_password?
            render json: {errors: user.errors.full_messages}
        end
    end

    def edit
        user = logged_in_user
    end

    def update
        user = logged_in_user

        user.update(user_params)
        if user.valid?
            render json: user, include: [:orders, :medicines]
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def change_password
        user = logged_in_user
        user.password = params[:new_password]

        if user.authenticate(params[:current_password]) && user.valid_password?
            user.save
            render json: { message: "Password has been updated!" }
        else
            render json: { errors: ["Password is too short"]}
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
            render json: {errors: "You could not be signed in. Check your username and password combination"}
        end
    end

    def validate
        #Decode the token that it's been sent as the Authorization header in order to get the id of the logged in user
        # id = decode_token
        #Use that id to find the logged in user
        user = logged_in_user
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
        params.require(:user).permit(:first_name, :last_name, :phone, :address, :allergies, :sex, :dob, :username)
    end
end
