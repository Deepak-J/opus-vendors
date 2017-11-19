class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :provider_ID
      t.string :title
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :year_of_registration
      t.integer :years_of_experience
      t.string :registration_number
      t.string :qualification
      t.string :clinic_name
      t.string :service_type
      t.float :session_rate
      t.string :rating
      t.text :external_notes
      t.text :address
      t.string :location
      t.string :state
      t.string :landmark
      t.string :city
      t.integer :zip
      t.string :email
      t.integer :contact_number
      t.integer :alternate_number
      t.integer :mobile

      t.timestamps null: false
    end
  end
end
