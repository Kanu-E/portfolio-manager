class CreatePortfolios < ActiveRecord::Migration[6.0]
  
    create_table :portfolios do |t|
      t.string :first_name
      t.string :last_name
      t.string :code
      t.references :user
      t.references :classification
      t.timestamps
 
    end
end
