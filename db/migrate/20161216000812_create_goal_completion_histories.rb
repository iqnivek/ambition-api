class CreateGoalCompletionHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :goal_completion_histories do |t|
      t.integer :target_score
      t.integer :completed_score
      t.references :user, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
