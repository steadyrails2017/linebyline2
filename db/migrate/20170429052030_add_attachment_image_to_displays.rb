class AddAttachmentImageToDisplays < ActiveRecord::Migration
  def self.up
    change_table :displays do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :displays, :image
  end
end
