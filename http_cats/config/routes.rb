Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :cats, only: [:index] => get '/cats' do 'Cat#index'
  resources :cats, only: [:index, :show, :edit, :update, :delete, :create, :new]
end
