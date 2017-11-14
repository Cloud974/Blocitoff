Rails.application.routes.draw do

  devise_for :users

  resources :lists do
    resources :tasks
  end

  get 'about' => 'welcome#about'
  root 'lists#index'

end
