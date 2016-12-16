class GoalCompletion < ApplicationRecord
  belongs_to :goal
  belongs_to :user

  validates :time, presence: true
end
