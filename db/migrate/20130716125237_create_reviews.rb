class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :author_name
      t.text :body
      t.references :reviewable, polymorphic: true
      t.timestamps
    end
  end
end
