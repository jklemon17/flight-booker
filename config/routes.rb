Rails.application.routes.draw do
  root 'flights#index'
  get 'flights', to: 'flights#index'

  resource :bookings, only: [ :new, :show, :create ]
  # get 'bookings/new'
  # get 'bookings/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
