class CreateUser < ActiveRecord::Migration
  def change
    create_table :site_users do |t|
	t.string :username
    end
  end
end
