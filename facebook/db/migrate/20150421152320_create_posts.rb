class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.datetime :date
      t.integer :like
      t.string :image
      t.string :content
      t.string :location
      t.string :mood

      t.timestamps null: false
    end
  end
end
