class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.date :dob
      t.text :biography
      t.decimal :rating, :default => 0
      t.integer :view_count, :default => 0

      t.timestamps
    end
  end
end
