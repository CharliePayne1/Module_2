class AddDobToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :dob, :datetime
  end
end
