class AddExpiresAtToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :expires_at, :date
  end
end
