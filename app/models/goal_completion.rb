class GoalCompletion < ApplicationRecord
  belongs_to :goal

  validates :time, presence: true
  validates :complete, presence: true
end
