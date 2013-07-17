class AddAttachmentPhotoToMoviePhotos < ActiveRecord::Migration
  def self.up
    change_table :movie_photos do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :movie_photos, :photo
  end
end
