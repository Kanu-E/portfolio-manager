class AddUserIdToPortfolios < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :user_id, :integer
  end
end
