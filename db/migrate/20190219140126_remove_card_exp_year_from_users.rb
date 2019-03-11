class RemoveCardExpYearFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :card_exp_year, :string
  end
end
