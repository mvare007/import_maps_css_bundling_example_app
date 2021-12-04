class CreateExchanges < ActiveRecord::Migration[6.1]
  def change
    create_table :exchanges do |t|
      t.string :name
      t.text :description
      t.string :country
      t.integer :year_established
      t.string :url
      t.string :image
      t.integer :trust_score
      t.integer :trust_score_rank
      t.decimal :trade_volume_24h_btc

      t.timestamps
    end
  end
end
