Rails.application.routes.draw do
  # get 'questions/index'
  # get 'questions/show'
  # get 'questions/edit'
  # get 'questions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'questions#index'
  resources :questions
end
