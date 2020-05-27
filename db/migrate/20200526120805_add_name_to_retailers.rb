class AddNameToRetailers < ActiveRecord::Migration[6.0]
  def change
    add_column :retailers, :name, :string
  end
end
