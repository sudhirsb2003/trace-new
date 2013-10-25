class Profile < ActiveRecord::Base
  attr_accessible :address, :blood_group, :contact_no, :emergency_contact_no, :family_doctor_name,
                  :profile_title, :ref_number_1, :ref_number_2, :user_id, :photo

  validates_presence_of :address, :blood_group, :contact_no, :emergency_contact_no, :profile_title

  belongs_to :user

  TITLE = %w(driver employee)

  has_attached_file :photo, :styles => { :small => "150x150>" },
                    :url  => "/assets/products/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

end
