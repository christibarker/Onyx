class AddAttachmentAvatarToLessons < ActiveRecord::Migration[5.1]
  def self.up
    change_table :lessons do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :lessons, :avatar
  end
end
