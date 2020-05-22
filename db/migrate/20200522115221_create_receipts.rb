class CreateReceipts < ActiveRecord::Migration[6.0]
  def change
    create_table :receipts do |t|
      t.integer :total_amount
      t.string :items
      t.integer :bank_account_id
      t.integer :retailer_id

      t.timestamps
    end
  end
end
