class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.datetime :start_date
      t.datetime :projected_end_date
      t.datetime :actual_end_date
      t.decimal :budget
      t.decimal :cost
      t.timestamps
    end
  end
end
