class CreateGoalCompletions < ActiveRecord::Migration[5.0]
  def change
    create_table :goal_completions do |t|
      t.references :goal, foreign_key: true

      t.timestamps
    end
  end
end
