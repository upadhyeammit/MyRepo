class Customers < ActiveRecord::Migration
  def change
	add_column :customers, :name, :string, :limit => 60, :null => false
	add_column :customers, :account_number, :integer, :null => false
  end
end
