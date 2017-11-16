class CreateGuidelines < ActiveRecord::Migration
  def change
    create_table :guidelines do |t|

      t.timestamps null: false
    end
  end
end
