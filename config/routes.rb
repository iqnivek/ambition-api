Rails.application.routes.draw do
  scope '/api' do
    resources :goals
    resources :goal_completions
  end
end
