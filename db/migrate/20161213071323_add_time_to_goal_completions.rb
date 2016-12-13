class AddTimeToGoalCompletions < ActiveRecord::Migration[5.0]
  def change
    add_column :goal_completions, :time, :datetime
  end
end
