class AddFieldnameToTableInstructedClasses < ActiveRecord::Migration[5.1]
  def change
  	add_column :instructed_classes, :date, :date  
  end
end
