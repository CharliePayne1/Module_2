class RemoveDobFromCustomers < ActiveRecord::Migration[6.0]
  def change
    remove_column :customers, :dob, :datetime
  end
end
