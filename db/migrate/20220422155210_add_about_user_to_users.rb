class AddAboutUserToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :about_user, :text
  end
end
