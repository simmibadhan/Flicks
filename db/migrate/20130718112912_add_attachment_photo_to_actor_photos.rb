class AddAttachmentPhotoToActorPhotos < ActiveRecord::Migration
  def self.up
    change_table :actor_photos do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :actor_photos, :photo
  end
end
