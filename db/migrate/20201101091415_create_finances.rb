class CreateFinances < ActiveRecord::Migration[6.0]
  def change
    create_table :finances do |t|
      t.string :name
      t.string :ticker
      t.decimal :current_value

      t.timestamps
    end
  end
end
