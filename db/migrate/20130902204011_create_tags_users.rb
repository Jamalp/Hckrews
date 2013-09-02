class CreateTagsUsers < ActiveRecord::Migration
  def change
    create_table :tags_users do |t|
      t.belongs_to :tag
      t.belongs_to :user
      t.integer :score_threshold, default: 80
    end
    add_index :tags_users, [:tag_id, :user_id], unique: true
  end
end
