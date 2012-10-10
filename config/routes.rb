MedDb::Application.routes.draw do

  devise_for :users, :path_names => { :sign_in => 'login', :sign_out => 'logout' }

  resources :hospitals do
    resources :departments
  end
  resources :departments, only: [:index, :show] do
    resources :subdivisions
  end
  resources :subdivisions, only: [:index, :show] do
    resources :rooms
  end
  resources :rooms, only: [:index, :show]

  resources :users

  root :to => 'dashboard#show'
end
