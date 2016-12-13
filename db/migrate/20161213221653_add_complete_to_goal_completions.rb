class AddCompleteToGoalCompletions < ActiveRecord::Migration[5.0]
  def change
    add_column :goal_completions, :complete, :boolean
  end
end
