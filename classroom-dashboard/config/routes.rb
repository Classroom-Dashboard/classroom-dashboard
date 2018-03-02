Rails.application.routes.draw do
  # nested routes so student always belongs to section
  resources :sections do
    resources :students
  end

  root 'sections#index'

  # root 'students#index'

  get 'sections/:id/randomize', to: "sections#randomize", as: :section_randomize


  get 'sections/:id/student_list', to: "sections#student_list", as: :section_student_list


end
