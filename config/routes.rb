Rails.application.routes.draw do
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/about" => "static_pages#about"
  get "/contact" => "static_pages#contact"
  get "/" => "static_pages#home"
  get "/resume" => "static_pages#resume"
  get "/testRecruiter" => "static_pages#testRecruiter"





  # Recruiters resource
  #get "/recruiters" => "recruiters#index"
  # "/recruiters/new" => "recruiters#new"
  #post "/recruiters" => "recruiters#create"
  #delete "/recruiters/:id" => "recruiters#destroy"
  #get "/recruiters/:id/edit" => "recruiters#edit"
  #get "/recruiters/:id" => "recruiters#show", as: :recruiter
  #patch "/recruiters/:id" => "recruiters#update" 
  resources :recruiters

end
