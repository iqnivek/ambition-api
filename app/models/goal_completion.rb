class GoalCompletion < ApplicationRecord
  belongs_to :goal

  validates :time, presence: true
end
