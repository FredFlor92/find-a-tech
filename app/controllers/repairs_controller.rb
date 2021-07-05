class RepairsController < ApplicationController
    before_action :authentication_required

    def new
    end
    
    def index 
        @repairs = Repair.all
    end

    def create
        @repair = Repair.new
        @repair.type = params["Type"]
        @repair.requestor_user_id = current_user.id
        
        if @repair.save
            redirect_to "/repairs"
        else
            raise @repair.errors.inspect
        end 
    end 

    def repair_params
    end 

end
