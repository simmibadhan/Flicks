class CreateActorPhotos < ActiveRecord::Migration
  def change
    create_table :actor_photos do |t|
      t.string :caption
      t.string :actor_id

      t.timestamps
    end
  end
end
