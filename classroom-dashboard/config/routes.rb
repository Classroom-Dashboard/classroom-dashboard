Rails.application.routes.draw do
  # nested routes so student always belongs to section
  resources :sections do
    resources :students
  end

  root 'sections#index'

  # root 'students#index'

  get 'sections/:id/randomize', to: "sections#randomize", as: :section_randomize




end
