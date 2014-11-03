Workspace::Application.routes.draw do

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users
  get 'sign-up' => 'users#new', as: 'sign_up'

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  root 'welcome#index'
end
