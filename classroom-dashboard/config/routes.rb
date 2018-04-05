Rails.application.routes.draw do

  devise_for :admins
  # nested routes so student always belongs to section
  resources :sections do
  resources :students
  end

  resources :uploads

  # necessary for dropzone to work, however this means that /uploads is a viable link which we don't want. TODO: address this
  post '/uploads' => 'uploads#create'

  root 'sections#index'

  get 'sections/:id/flashcards', to: "sections#flashcards", as: :section_flashcards

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

end
