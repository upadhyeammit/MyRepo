class AddColumnsToCustomers < ActiveRecord::Migration
  def change
        add_column :customers, :address, :text
        add_column :customers, :phone_number, :string
  end
end
