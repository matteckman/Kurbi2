Kurbi2::Application.routes.draw do
  
  root :to => 'pages#home'
  
  match '/about',   :to => 'pages#about',       :as => 'about'
  match '/home',    :to => 'pages#home',        :as => 'home'
  match '/contact', :to => 'pages#contact',     :as => 'contact' 
  match '/signup',  :to => 'patients#new',      :as => 'signup'
  match '/signin',  :to => 'sessions#new',      :as => 'signin'
  match '/signout', :to => 'sessions#destroy',  :as => 'signout'

  match '/admin', :to => 'admins#index', :as => 'admin'
  match '/admin/symptom_categories/index', :to => 'symptom_categories#index', :as => 'admin_list_categories'
  match '/admin/symptom_categories/new', :to => 'symptom_categories#new', :as => 'admin_new_categories'
  match '/admin/predefined_symptoms/index', :to => 'predefined_symptoms#index', :as => 'admin_list_symptoms'

  resources :user_defined_symptoms

  resources :daily_record_details
  
  resources :histories, :only => [:show]
  
  resources :surveys 
  match '/surveys/:patient_id/more', :to => 'surveys#more'
     	
  resources :sessions, :only => [:new, :create, :destroy]
  resources :password_resets
    
#  resources :system_errors

  resources :symptom_categories

#  resources :severities

  resources :search_queries

  resources :searches

  resources :roles

  resources :predefined_symptoms

#  resources :people

#  resources :patient_symptom_searches

  resources :patients
  match '/patients/:id/edit/profile', :to => 'patients#profile', :as => 'profile'
  match '/patients/:id/careteam', :to => 'patients#careteam', :as => 'careteam'

#  resources :pages

#  resources :messages

  resources :employees

  resources :doctors

#  resources :disease_profiles

#  resources :days

  resources :daily_records

#  resources :addresses

#  resources :actions
end
