class CreateNames < ActiveRecord::Migration[6.0]
  def change
    create_table :names do |t|
      t.string :name
      t.string :uid
      t.timestamps
      t.integer :list_id
    end
  end
end
