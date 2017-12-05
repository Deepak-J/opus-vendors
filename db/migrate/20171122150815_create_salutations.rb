class CreateSalutations < ActiveRecord::Migration
  def change
    create_table :salutations do |t|
      t.string :salutation

      t.timestamps null: false
    end
  end
end
