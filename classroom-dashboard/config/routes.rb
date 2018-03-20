Rails.application.routes.draw do

  # nested routes so student always belongs to section
  resources :sections do
  resources :students
  end

  root 'sections#index'

  # root 'students#index'

  get 'sections/:id/flashcards', to: "sections#flashcards", as: :section_flashcards

  #devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


end
