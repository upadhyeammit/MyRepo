class AddColumnsToCustomersTicketsGuidelines < ActiveRecord::Migration
  def change
	add_column :customers, :mail_address, :string, :null => false
	add_column :tickets,   :collaborator_id, :'integer[]'
	add_column :guidelines, :priority, :integer
  end
end
