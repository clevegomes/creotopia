class AddAttachmentDocumentToWorks < ActiveRecord::Migration
  def self.up
    change_table :works do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :works, :document
  end
end
