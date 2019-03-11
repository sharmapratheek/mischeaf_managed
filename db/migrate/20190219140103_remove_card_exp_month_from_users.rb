class RemoveCardExpMonthFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :card_exp_month, :string
  end
end
