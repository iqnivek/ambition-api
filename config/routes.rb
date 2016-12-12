Rails.application.routes.draw do
  scope '/api' do
    resources :goals
  end
end
