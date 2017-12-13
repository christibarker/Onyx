class RemoveColumnFromShow < ActiveRecord::Migration[5.1]
  def change
  	remove_column :shows, :vip_table
  end
end
