class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.integer :user_id, null: false 
      t.integer :answer_id, null: false 
      t.timestamp 
      t.index :user_id
      t.index :answer_id
    end
  end
end
