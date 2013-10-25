class PickUpPoint < ActiveRecord::Base
  attr_accessible :address, :name

  has_many :users
  belongs_to :attendence
end
