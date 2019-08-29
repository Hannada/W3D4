class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.string :title, null: false 
      t.integer :user_id, null: false 
      t.timestamps 
      t.index :user_id
    end
  end
end
