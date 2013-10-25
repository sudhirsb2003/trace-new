class Attendence < ActiveRecord::Base
  attr_accessible :employee_id, :pick_up_point_id, :status, :user_id, :vehicle_id

  has_many :users
  has_many :vehicles
  has_many :pick_up_points

  include Workflow
  workflow_column :status
  workflow do
    state :pending do
      event :submit, :transitions_to => :approved
    end
    state :approved
  end
end
