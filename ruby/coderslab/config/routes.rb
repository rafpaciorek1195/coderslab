Rails.application.routes.draw do
root 'welcome#index'
get 'powitanie', to: 'welcome#index', as: :main


resources :paths do
  collection do
    get 'moja_nazwa_akcji'
  end
end


resources :cities


end
