class CreateEngineers < ActiveRecord::Migration
  def change
    create_table :engineers do |t|

      t.timestamps null: false
    end
  end
end
