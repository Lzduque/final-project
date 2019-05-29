Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # '/' -> index.html?

  # root to: 'recipes#index'

  scope '/api' do
    get '/recipes/search' => 'recipes#search'

    resources :users
    resources :ingredients
    resources :recipes
    get '/recipes/search' => 'recipes#search'

  end
end
