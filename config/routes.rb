Rails.application.routes.draw do
  resources :answers
  resources :questions
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/about' => 'home#about'

end
