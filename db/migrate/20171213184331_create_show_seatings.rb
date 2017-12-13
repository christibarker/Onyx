class CreateShowSeatings < ActiveRecord::Migration[5.1]
  def change
    create_table :show_seatings do |t|
      t.string :quanity
      t.string :cost
      t.references :seat, foreign_key: true
      t.references :show, foreign_key: true

      t.timestamps
    end
  end
end
