class AddRactiveToProjects < ActiveRecord::Migration[5.0]
  def change
     add_column :projects, :ractive, :boolean
  end
end
