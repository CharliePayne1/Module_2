class AddLastNameToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :last_name, :string
  end
end
