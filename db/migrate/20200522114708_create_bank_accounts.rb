class CreateBankAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :bank_accounts do |t|
      t.integer :account_number
      t.integer :sort_code
      t.string :type_of_account
      t.integer :funds
      t.integer :overdraft
      t.integer :customer_id

      t.timestamps
    end
  end
end
