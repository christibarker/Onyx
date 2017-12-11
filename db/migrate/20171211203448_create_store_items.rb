class CreateStoreItems < ActiveRecord::Migration[5.1]
  def change
    create_table :store_items do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.references :user, foreign_key: true
      t.integer :quanity

      t.timestamps
    end
  end
end
