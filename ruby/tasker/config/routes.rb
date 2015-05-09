Rails.application.routes.draw do
#get '/cokolwiek', to: 'kontroler#akcja', as :cokolwiek
  resources :tasks, only: [:new, :create]
  resources :users do
    member do
      get :tasks
    end
  end

  resources :boards do
    member do
      get :tasks
    end
    
    collection do
      get :top
    end

  end

  

end
