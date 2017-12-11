class CreateGiftCards < ActiveRecord::Migration[5.1]
  def change
    create_table :gift_cards do |t|
      t.string :name
      t.integer :cost
      t.integer :quanity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
