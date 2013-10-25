class Vehicle < ActiveRecord::Base
  attr_accessible :user_id, :vehicle_make, :vehicle_number
  validates_presence_of :user_id, :message => "Please select a driver"
  validates_presence_of :vehicle_make, :vehicle_number
  has_many :pick_up_points
  belongs_to :attendence
  belongs_to :user
  has_many :passengers
end
