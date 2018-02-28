Rails.application.routes.draw do
  resources :sections
  resources :students
  
  root 'sections#index'

  # root 'students#index'
  
  get '/randomize', to: "students#randomize"

  get '/student_list', to: "students#student_list"



end
