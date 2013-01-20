class Region < ActiveRecord::Base
  attr_accessible :area, :country, :province, :region_id, :town
end
