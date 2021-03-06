class SessionsController < ApplicationController

    def new
    end 

    def create 
        @user = User.find_by(:username => params[:username])
        @user = User.find_by(:email => params[:email])
        if @user
            login(@user)
            redirect_to '/'
        else 
            redirect_to "/login", :notice => "User not found"
        end 
    end
    
    def destroy
        reset_session
        redirect_to "/"
    end 

end
