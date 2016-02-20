class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :project_id
      t.integer :resource_id
      t.datetime :start_date
      t.datetime :end_date
      
      t.timestamps
    end
    add_index :assignments, [:project_id, :resource_id]
  end
end