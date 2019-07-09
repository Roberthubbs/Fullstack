class RemoveColumnFromSteps < ActiveRecord::Migration[5.2]
  def change
    remove_column :steps, :project_key, :integer
  end
end
