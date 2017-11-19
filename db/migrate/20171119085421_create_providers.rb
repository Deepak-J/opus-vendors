class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.integer :provider_id
      t.string :name
      t.text :address
      t.string :charge_code

      t.timestamps null: false
    end
  end
end
