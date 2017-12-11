class CreateInstructedClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :instructed_classes do |t|
      t.references :lesson, foreign_key: true
      t.references :teacher, foreign_key: true
      t.time :time
      t.string :duration

      t.timestamps
    end
  end
end
