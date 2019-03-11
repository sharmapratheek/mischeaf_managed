class RemoveCardBrandFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :card_brand, :string
  end
end
