class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :uid, null: false
      t.timestamps
    end
  end
end
