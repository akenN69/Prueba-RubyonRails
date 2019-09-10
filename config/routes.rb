Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  get 'todos/new'
  post 'todos', to: 'todos#create'
  get '/todos/list', to: 'todos#list'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  get 'todos/:id/edit', to: 'todos#edit', as: 'edit_todo'
  patch 'todos/:id', to: 'todos#update'
  delete 'todos/:id', to: 'todos#destroy'
  #get '/todos/:id/complete', to: 'todos#complete' as: 'complete_todos'
  post 'completes/:id', to: 'completes#create', as: 'completes'
  delete 'completes/:id', to: 'completes#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
