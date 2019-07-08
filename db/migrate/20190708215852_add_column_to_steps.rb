class AddColumnToSteps < ActiveRecord::Migration[5.2]
  def change
    add_column :steps, :project_key, :integer
  end
end
