Blocnotes::Application.routes.draw do
  
  match "/players/new" => "players#create", :via => [:post]
  get "goals/new"
  get "goals/edit"
  devise_for :users
  
  resources :teams do
    resources :players, only: [:create]
  end

  resources :matches

  match "about" => 'welcome#about', via: :get

  root to: 'welcome#index'
end
