class Project < ActiveRecord::Base
	has_many :donations
	has_many :needs#, :dependant => :destroy
	belongs_to :region
  attr_accessible :description, :manager_id, :name, :need_level, :need_list, :region_id
  validates :name, presence: true
end
