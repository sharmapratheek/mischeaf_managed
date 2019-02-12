class AddCardLast4ToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :card_last4, :string
  end
end
