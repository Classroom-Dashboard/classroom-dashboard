Rails.application.routes.draw do
  # nested routes so student always belongs to section
  resources :sections do
    resources :students
  end

  root 'sections#index'

  # root 'students#index'

  get 'sections/:section_id/randomize', to: "students#randomize"

  # get '/student_list', to: "students#student_list"



end
