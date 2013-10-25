class Passenger < ActiveRecord::Base
  attr_accessible :user_id, :vehicle_id
  validates_uniqueness_of :vehicle_id, :scope => :user_id
  belongs_to :vehicle
  belongs_to :user

end
