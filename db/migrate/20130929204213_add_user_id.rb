class AddUserId < ActiveRecord::Migration
  def change
  	add_column :change_loggings, :user_email, :string
  	add_column :change_loggings, :user_id, :string
  end
end
