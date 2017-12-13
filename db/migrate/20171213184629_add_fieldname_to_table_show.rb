class AddFieldnameToTableShow < ActiveRecord::Migration[5.1]
  def change
  	add_column :shows, :date, :date  
  	add_column :shows, :time, :string 
  end
end
