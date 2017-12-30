class AddFieldnameToTableLessons < ActiveRecord::Migration[5.1]
  def change
  	add_column :lessons, :workshop, :boolean  
  end
end
