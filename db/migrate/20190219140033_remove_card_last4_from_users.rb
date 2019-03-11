class RemoveCardLast4FromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :card_last4, :string
  end
end
