class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.date :release_date
      t.text :synopsis
      t.decimal :rating, :default => 0
      t.integer :view_count, :default => 0

      t.timestamps
    end
  end
end
