class CreateOpenProjectToDoPmoTodos < ActiveRecord::Migration
  def change
    create_table :open_project_to_do_pmo_todos do |t|
      t.integer :work_package_id
      t.string :sort
      t.integer :line_id
      t.string :work
      t.string :work_unit
      t.string :duration
      t.string :duration_unit
      t.integer :assignee_id
      t.text :text
      t.boolean :finished

      t.timestamps null: false
    end
  end
end
