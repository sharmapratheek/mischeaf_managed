Rails.application.routes.draw do
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
  mount StripeEvent::Engine, at: '/payments'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
