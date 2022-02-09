class RegistrationsController < ApplicationController
    
    def create 
        #user = User.create!(
            #username: (params ['user']['username']),
            #email: (params ['user']['email']),
            #phone: (params ['user']['phone']),
            #password: (params ['user']['password']),
            #password_confirmation: (params ['user']['password_confirmation'])
        #)
        @user = User.new(user_params)
        if @user
            session[:user_id] = @user.id
            render json: {
                status: :created,
                user: @user
            }
        else
            render json: {
                status: 500
            }
        end
    end
    def user_params
        params.require(:user).permit(:username, :email, :phone, :password, :password_confirmation)
     end
end
