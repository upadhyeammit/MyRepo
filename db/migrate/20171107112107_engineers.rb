class Engineers < ActiveRecord::Migration
  def change
	add_column :engineers, :name, :string, :limit => 60, :null => false
	add_column :engineers, :designation, :string, :null => false
	add_column :engineers, :address, :text
	add_column :engineers, :timezone, :string
	add_column :engineers, :skill_set, :string
	add_column :engineers, :is_collaborator, :boolean 
  end
end
