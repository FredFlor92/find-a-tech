class SessionsController < ApplicationController

    def new
    end 

    def create 
        @user = User.find_by(:username => params[:username])
        @user = User.find_by(:email => params[:email])
        if @user
            session[:current_user_id] = @user.id
            redirect_to '/'
        else 
            redirect_to "/login", :notice => "User not found"
        end 

    end 

end
