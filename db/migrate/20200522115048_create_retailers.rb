class CreateRetailers < ActiveRecord::Migration[6.0]
  def change
    create_table :retailers do |t|
      t.string :sector
      t.integer :annual_turnover
      t.integer :established
      t.integer :employees

      t.timestamps
    end
  end
end
