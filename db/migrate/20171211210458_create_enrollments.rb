class CreateEnrollments < ActiveRecord::Migration[5.1]
  def change
    create_table :enrollments do |t|
      t.references :instructed_class, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
