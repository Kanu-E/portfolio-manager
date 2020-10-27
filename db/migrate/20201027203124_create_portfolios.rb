class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.string :first_name
      t.string :last_name
      t.string :code
      t.string :type

      t.timestamps
    end
  end
end
