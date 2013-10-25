class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.text :address
      t.string :contact_no
      t.string :blood_group
      t.string :emergency_contact_no
      t.string :family_doctor_name
      t.string :ref_number_1
      t.string :ref_number_2
      t.string :profile_title

      t.timestamps
    end
  end
end
