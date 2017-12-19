class ModifyColumnOnContacts < ActiveRecord::Migration
  def self.up
    change_column :contacts, :mobile, :string
    change_column :contacts, :alternate_number, :string
  end
  
  def self.down
    change_column :contacts, :mobile, :integer
    change_column :contacts, :alternate_number, :integer
  end
end
