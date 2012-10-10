MedDb::Application.routes.draw do

  devise_for :users, :path_names => { :sign_in => 'login', :sign_out => 'logout' }

  resources :hospitals do
    resources :departments
  end
  resources :departments, only: [:index, :show] do
    resources :subdivisions
  end

  root :to => 'dashboard#show'
end
