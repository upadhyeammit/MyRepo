class Tickets < ActiveRecord::Migration
  def change
	add_column :tickets, :case_number, :integer, :null => false
	add_column :tickets, :account_number, :integer, :null => false
	add_column :tickets, :product_name, :string, :null => false
	add_column :tickets, :product_verion, :string, :null => false
	add_column :tickets, :comment, :text, :null => false
	add_column :tickets, :comment_time_date, :'TIMESTAMP WITH TIME ZONE', :null => false
	add_column :tickets, :comment_owner_id, :integer, :null => false
	add_column :tickets, :case_owner, :integer, :null => false 
  end
end
