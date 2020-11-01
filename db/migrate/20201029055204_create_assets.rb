class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|
      t.string :name
      t.string :ticker
      t.integer :average_cost
      t.integer :current_value

      t.timestamps
    end
  end
end
