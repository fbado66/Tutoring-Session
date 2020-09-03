Rails.application.routes.draw do
  resources :tutoring_times
  resources :coaches
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "application#welcome"
  get '/students', to: 'students#index', as: 'students'
  get '/students/new', to: 'students#new', as: 'new_student'
  post '/students', to: 'students#create'
  get '/students/:id', to: 'students#show', as: 'student'
  get '/students/:id/edit', to: 'students#edit'
  patch '/students/:id', to: 'students#update'



end
