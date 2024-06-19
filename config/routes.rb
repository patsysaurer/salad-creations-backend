Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  #recieve information from the database
  #---------------------------------------
  # The 'index' method has access to all of the items in the database
  get 'salads' => 'salad#index', as: 'salads'

  # The 'create' method submits the new user data to the database
  post 'salads' => 'salad#create'

  # The 'new' method adds information to the app
  get 'salads/new' => 'salad#new', as: 'new_salad'

  # The 'show' method looks for one item in the database by the id
  get 'salads/:id' => 'salad#show', as: 'salad'


  # Defines the root path route ("/")
  # root "posts#index"
end
