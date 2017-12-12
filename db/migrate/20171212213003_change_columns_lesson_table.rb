class ChangeColumnsLessonTable < ActiveRecord::Migration[5.1]
  def change
  	rename_column :lessons, :date, :description
  	rename_column :lessons, :class_name, :lesson_name
  end
end
