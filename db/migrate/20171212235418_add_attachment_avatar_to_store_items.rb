class AddAttachmentAvatarToStoreItems < ActiveRecord::Migration[5.1]
  def self.up
    change_table :store_items do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :store_items, :avatar
  end
end
