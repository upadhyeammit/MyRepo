class Guidelines < ActiveRecord::Migration
  def change
	add_column :guidelines, :ticket_number, :integer, :null => false
	add_column :guidelines, :customer_account_number, :integer, :null => false
	add_column :guidelines, :guideline, :text, :null => false
	add_column :guidelines, :guideline_id, :integer, :null => false
  end
end
