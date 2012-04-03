Kurbi2::Application.routes.draw do
  
  root :to => 'pages#home'
  
  match '/public/about',   :to => 'pages#about',       :as => 'about'
  match '/public/home',    :to => 'pages#home',        :as => 'home'
  match '/public/contact', :to => 'pages#contact',     :as => 'contact' 
  match '/member/signup',  :to => 'patients#new',      :as => 'signup'
  match '/member/signin',  :to => 'sessions#new',      :as => 'signin'
  match '/member/signout', :to => 'sessions#destroy',  :as => 'signout'

  match '/admin/symptom_categories/index', :to => 'symptom_categories#index'
  match '/admin/symptom_categories/new', :to => 'symptom_categories#new'

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

  resources :people

#  resources :patient_symptom_searches

  resources :patients

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
