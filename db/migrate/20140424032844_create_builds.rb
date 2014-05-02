class CreateBuilds < ActiveRecord::Migration
  def change
    create_table :builds do |t|
      t.integer :build_number
      t.datetime :date
      t.float :duration
      t.string :status

      t.timestamps
    end
    add_column :builds, :project_id, :integer
    add_index "builds", ["project_id"], :name => "index_builds_on_project_id"
  end
end
