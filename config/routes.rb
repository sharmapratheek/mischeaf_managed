Rails.application.routes.draw do
  resources :charges
  resources :abouts
  resources :homes
  resources :carts
  resources :line_items
  resources :boxes do 
    resources :reviews,except: [:show,:index]
  end
  devise_for :users,controllers: {
  	registrations: 'registrations'
  }
  root "homes#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
