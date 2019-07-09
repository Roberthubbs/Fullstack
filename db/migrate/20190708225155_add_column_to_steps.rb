class AddColumnToSteps < ActiveRecord::Migration[5.2]
  def change
    add_column :steps, :project_id, :integer
  end
end
