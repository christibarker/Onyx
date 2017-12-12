class AddAttachmentAvatarToGiftCards < ActiveRecord::Migration[5.1]
  def self.up
    change_table :gift_cards do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :gift_cards, :avatar
  end
end
