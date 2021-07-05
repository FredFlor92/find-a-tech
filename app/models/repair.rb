class Repair < ApplicationRecord
    #Alias Associations

    belongs_to :requestor_user_id, :class_name => "User"
    belongs_to :respondor_user_id, :class_name => "User", :optional => true
end
