class ChangeColumn < ActiveRecord::Migration
  def change
    change_table :contacts do |c|
      c.change :contact_number, :string
    end
  end
end
