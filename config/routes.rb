LolBook::Application.routes.draw do

  devise_for :users

  resources :champions
  resources :items
  resources :plays

  root :to => 'plays#index'
end
