Rails.application.routes.draw do

  resources :runners, :races

  root to: 'runners#index'

end
