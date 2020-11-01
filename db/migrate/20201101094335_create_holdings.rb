class CreateHoldings < ActiveRecord::Migration[6.0]
  def change
    create_table :holdings do |t|
      t.references :portfolio
      t.references :finance
      t.decimal :cost

      t.timestamps
    end
  end
end
