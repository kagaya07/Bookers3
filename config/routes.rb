Rails.application.routes.draw do
  get 'users/show'
  get 'users/index'
  get 'users/edit'
  devise_for :users
  root :to => 'users#top'
  get 'books' => 'books#index'
  post 'books', to: 'books#create'
  get 'books/:id' => 'books#show', as:'book'
  get 'books/:id/edit' => 'books#edit', as:'edit_book'
  delete 'books/:id' => 'books#destroy', as:'destroy_book'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
