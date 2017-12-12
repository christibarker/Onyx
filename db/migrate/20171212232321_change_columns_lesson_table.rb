class ChangeColumnsLessonTable < ActiveRecord::Migration[5.1]
  def change
  	rename_column :lessons, :lesson_name, :name
  end
end
