class UsersController < ApplicationController
    #New User Action
    def new
        if session[:current_user_id]
            redirect_to '/', :notice => "Already logged in"
        end 
        # @user = User.new
    end 
    #Creates the User Action
    def create
        @user = User.new
        @user.username = params[:username]
        @user.email = params[:email]
        #@user.password = params[:password]
        @user.save

        redirect_to "/login"
        # @user = User.new(user_params)
        # if @user.save
        #     #login the user
        #     session[:user_id] = @user.id
        #     redirect_to user_path(@user)
        # else
        #     render :new 
        # end 
    end 


end
