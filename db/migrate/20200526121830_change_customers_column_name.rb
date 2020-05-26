class ChangeCustomersColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :customers, :name, :first_name
  end
end
