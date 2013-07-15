class CreateCasts < ActiveRecord::Migration
  def change
    create_table :casts do |t|
      t.belongs_to :movie
      t.belongs_to :actor
      t.timestamps
    end
  end
end
