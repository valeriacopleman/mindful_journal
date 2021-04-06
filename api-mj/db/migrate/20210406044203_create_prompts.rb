class CreatePrompts < ActiveRecord::Migration[6.0]
  def change
    create_table :prompts do |t|
      t.string :description
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
