class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :full_name, :profile_attributes
  # attr_accessible :title, :body
  has_one:profile
  accepts_nested_attributes_for :profile
  has_many :passengers
  belongs_to :attendence
end
