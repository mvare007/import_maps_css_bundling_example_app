class CreateCoins < ActiveRecord::Migration[6.1]
  def change
    create_table :coins do |t|
      t.string :name
      t.string :symbol
      t.string :contract_address
      t.string :image

      t.decimal :market_cap
      t.integer :market_cap_rank
      t.decimal :market_cap_change_24h
      t.decimal :market_cap_change_percentage_24h

      t.decimal :current_price

      t.decimal :circulating_supply
      t.decimal :total_supply
      t.decimal :max_supply

      t.decimal :ath
      t.decimal :ath_change_percentage
      t.decimal :ath_date

      t.decimal :atl
      t.decimal :atl_change_percentage
      t.decimal :atl_date

      t.decimal :high_24h
      t.decimal :low_24h
      t.decimal :price_change_24h
      t.decimal :price_change_percentage_24h
      t.decimal :total_volume

      t.timestamps
    end
  end
end
