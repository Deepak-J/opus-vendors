class RenameColumnContact < ActiveRecord::Migration
  def change
    rename_column :contacts, :provider_ID, :provider_id
  end
end
