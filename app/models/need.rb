class Need < ActiveRecord::Base
	belongs_to :project
	has_many :donations
  attr_accessible :description, :donation_id, :name, :project_id, :quantity
end
