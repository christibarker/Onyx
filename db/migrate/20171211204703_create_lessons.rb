class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.date :date
      t.string :class_name

      t.timestamps
    end
  end
end
