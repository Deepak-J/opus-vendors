class DropColumn < ActiveRecord::Migration
  def self.up
    change_table :contacts do |table|
      table.remove :address
      table.remove :location
      table.remove :contact_number
      table.remove :zip
      table.remove :city
      table.remove :landmark
      table.remove :state
  end
  end
  
    def self.down
    change_table :contacts do |table|
      table.text :address
      table.string :location
      table.string :contact_number
      table.integer :zip
      table.string :city
      table.string :landmark
      table.string :state
  end
  end
end
