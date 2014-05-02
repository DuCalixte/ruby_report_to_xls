class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :last_build
      t.float :recent_results

      t.timestamps
    end
  end
end
