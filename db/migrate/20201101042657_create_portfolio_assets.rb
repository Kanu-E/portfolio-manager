class CreatePortfolioAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolio_assets do |t|
      t.references :portfolio
      t.references :asset
      t.decimal :cost

      t.timestamps
    end
  end
end
