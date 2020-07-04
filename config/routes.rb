Rails.application.routes.draw do
    root to: 'pages#home'
    
    # Tell the routes file that we will write a file under (controllers)/users/registrations
    # to extend the functionality of the base devise registrations controller.
    devise_for :users, controllers: { registrations: 'users/registrations' }
    
    get 'about', to: 'pages#about'
    resources :contacts, only: :create
    get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
