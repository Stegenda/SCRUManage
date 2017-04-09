Rails.application.routes.draw do
 # get 'welcome/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'welcome#index'
  devise_scope :user do
    #get '/', to: 'devise/sessions#new'
    get 'login', to: 'devise/sessions#new'
    get 'register', to: 'devise/registrations#new'  
    get "/pages/:page" => "pages#show"
    get 'projects/new'
    get 'projects/edit'
    resources :projects
  end
end
