class CreateKeyphrases < ActiveRecord::Migration
  def change
    create_table :keyphrases do |t|
      t.string :keyphrase_phrase
      t.integer :keyphrase_exact_searches
      t.decimal :keyphrase_product_price
      t.references :affiliate

      t.timestamps
    end
    
    add_index :keyphrases, :affiliate_id
  end
end
