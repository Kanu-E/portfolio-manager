class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|
      t.string :name
      t.string :ticker
      t.integer :amount
      t.integer :average_cost
      t.integer :current_value
      t.references :category, null: false, foreign_key: true
      t.references :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
