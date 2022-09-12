Rails.application.routes.draw do
  get 'books/new'
  get 'top' => 'homes#top'
  post 'books/create' => 'books#create'
  get 'books/index' => 'books#index'
  get 'books/:id/show' => 'books#show',as:'show'
  get 'books/:id/edit' => 'books#edit',as:'edit_book'
  delete 'books/:id' => 'books#destroy',as:'destroy_book'
  patch 'books/:id' => 'books#update',as:'update_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
