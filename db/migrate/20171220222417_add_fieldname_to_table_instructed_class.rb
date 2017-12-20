class AddFieldnameToTableInstructedClass < ActiveRecord::Migration[5.1]
  def change
  	add_column :instructed_classes, :class_size, :integer  
  end
end
