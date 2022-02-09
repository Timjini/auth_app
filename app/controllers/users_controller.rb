class UsersController < ApplicationController
    def index 
        render json: {
            user: @user = User.all
        }
    end
end
