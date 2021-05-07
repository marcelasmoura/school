Rails.application.routes.draw do
  root to: 'homes#home'
  resources :grades do 
  	resources :add_students_at_grades 
  end
  resources :students
  resources :teachers
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
