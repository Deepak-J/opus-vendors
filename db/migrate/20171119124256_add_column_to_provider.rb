class AddColumnToProvider < ActiveRecord::Migration
  def change
    add_column :providers, :city, :string
    add_column :providers, :zip, :string
    add_column :providers, :category_id, :integer
  end
end
