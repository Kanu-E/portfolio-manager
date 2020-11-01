class CreatePortfolioFinances < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolio_finances do |t|
      t.references :portfolio
      t.references :finance
      t.decimal :cost

      t.timestamps
    end
  end
end
