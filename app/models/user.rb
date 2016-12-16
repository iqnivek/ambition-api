class User < ApplicationRecord
  has_many :goals
  has_many :goal_completions
  has_many :goal_completion_histories
end
