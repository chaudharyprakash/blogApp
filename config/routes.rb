Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  
  get  '/dashboard', to: 'dashboard#show'
  root 'home#index'

  resources :blogs
  # thanks to omniauth github gem
  get '/auth/:provider/callback', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'
end
