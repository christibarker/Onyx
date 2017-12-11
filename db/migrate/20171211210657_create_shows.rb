class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :description
      t.integer :quanity
      t.integer :floor_seating
      t.integer :general_admission
      t.integer :vip_table
      t.integer :standing_room
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
