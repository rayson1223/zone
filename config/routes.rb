Workspace::Application.routes.draw do

  resources :users
  get 'sign-up' => 'users#new'

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  root 'welcome#index'
end
