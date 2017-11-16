class Users < ActiveRecord::Migration
  def change
  	add_column :users, :login_id, :integer, :null => false 
	add_column :users, :name, :text, :limit => 60, :null => false
        add_column :users, :password, :string, :limit => 100, :null => false
        add_column :users, :address, :string, :limit => 30
  end
end
