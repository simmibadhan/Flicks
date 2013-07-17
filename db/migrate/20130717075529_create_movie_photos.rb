class CreateMoviePhotos < ActiveRecord::Migration
  def change
    create_table :movie_photos do |t|
      t.string :caption
      t.integer :movie_id

      t.timestamps
    end
  end
end
