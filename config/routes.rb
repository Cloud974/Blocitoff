Rails.application.routes.draw do
  devise_for :users

  resources :wikis do
    resources :collaborators, only: [:index, :create, :destroy]
  end

  get 'about' => 'welcome#about'
  root 'welcome#index'

end
