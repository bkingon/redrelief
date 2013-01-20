class Donation < ActiveRecord::Base
	belongs_to :project
	belongs_to :user
  attr_accessible :description, :donation_id, :procurement, :project_id, :quantity, :user_id
end
