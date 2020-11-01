class CreatePortfolioAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolio_assets do |t|
      t.references :portfolio
      t.references :asset
      t.integer :cost

      t.timestamps
    end
  end
end
