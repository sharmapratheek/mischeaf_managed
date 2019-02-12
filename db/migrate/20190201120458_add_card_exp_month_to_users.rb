class AddCardExpMonthToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :card_exp_month, :string
  end
end
