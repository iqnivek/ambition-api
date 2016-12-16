Rails.application.routes.draw do
  scope '/api' do
    resources :goals
    resources :goal_completions
    resources :goal_completion_histories
  end
end
