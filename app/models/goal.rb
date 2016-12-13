class Goal < ApplicationRecord
  belongs_to :user
  has_many :goal_completions

  validates :name, presence: true
end
