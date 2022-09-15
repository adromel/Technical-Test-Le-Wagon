Rails.application.routes.draw do
  get 'missions/create'
  get 'missions/index'
  get 'missions/show'
  get 'missions/update'
  get 'missions/delete'
  get 'reservations/create'
  get 'reservations/index'
  get 'reservations/show'
  get 'reservations/update'
  get 'reservations/delete'
  get 'bookings/create'
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/update'
  get 'bookings/delete'
  get 'listings/create'
  get 'listings/index'
  get 'listings/show'
  get 'listings/update'
  get 'listings/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
