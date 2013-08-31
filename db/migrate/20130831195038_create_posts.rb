class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.integer :points
      t.integer :comments
      t.string :top_comment
      t.boolean :hot

      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end
