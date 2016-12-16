# TODO validate uniqueness of date

class GoalCompletionHistory < ApplicationRecord
  belongs_to :user
  
  validates :date, presence: true
end
