class CreatePortfolioAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolio_assets do |t|
      t.string :portfolio
      t.string :asset
      t.integer :cost

      t.timestamps
    end
    add_index :portfolio_assets, :portfolio
    add_index :portfolio_assets, :asset
  end
end
