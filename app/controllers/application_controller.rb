class ApplicationController < ActionController::Base
   
    include ApplicationHelper::SessionsHelper
   
    before_action :current_user

    def home

    end 
    
    private
        def authentication_required
            if !logged_in?
            redirect_to "/login"
            end 
        end
    
end  
