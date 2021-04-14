class UsersController < ApplicationController
    def create
        @user = User.create(
            username: params([:username]),
            name: params([:name]),
            
        )
        render json: { user: @user}
    end
    
    def index 
        @users = User.all

        render json: @users
    end

    def show
        @user = User.find(params[:id])

        render json: @user
    end


end

