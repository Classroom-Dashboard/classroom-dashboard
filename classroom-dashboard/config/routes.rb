Rails.application.routes.draw do
  resources :students
  root 'students#index'

  get '/randomize', to: "students#randomize"
end
