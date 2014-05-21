class AddAuthenticateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :authenticate, :string
  end
end
