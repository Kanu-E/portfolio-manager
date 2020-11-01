class CreatePortfolios < ActiveRecord::Migration[6.0]
  
    create_table :portfolios do |t|
      t.string :name
      t.string :code
      t.references :user
      t.timestamps
 
    end
end
