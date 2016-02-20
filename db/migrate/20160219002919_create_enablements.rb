class CreateEnablements < ActiveRecord::Migration
  def change
    create_table :enablements do |t|
      t.integer :project_id
      t.integer :resource_id
      t.references :projects, index: true, foreign_key: true
      t.references :resources, index: true, foreign_key: true
      
      t.timestamps
    end
  end
end