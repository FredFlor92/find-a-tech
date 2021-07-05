module ApplicationHelper
    module SessionsHelper

        def logged_in?
            # if current_user
            #     true
            # else 
            #     false
            # end 
            current_user ? true : false
        end 
# helpers / methods used in other actions
        def current_user
            if session[:current_user_id]
            @current_user = User.find(session[:current_user_id])
            end 
             #    if @current_user
            #     return current_user
            #    else
            #     @current_user = = User.find(session[:current_user_id])
            #    end 
        end 

        def login(user)
            session[:current_user_id] = @user.id
        end 
    end 
end
