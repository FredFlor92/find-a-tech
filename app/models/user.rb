class User < ApplicationRecord

    has_many :repair_requests, :class_name => "Repair", :foreign_key => "requestor_user_id"
    has_many :repair_responses, :class_name => "Repair", :foreign_key => "respondor_user_id"
end
