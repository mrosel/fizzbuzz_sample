=begin
FizzbuzzSample::Application.routes.draw do
  get 'favorites/create'

  namespace :api, defaults: { format: :json } do 
    scope module: :v1 do 
        get 'fizzbuzz/index'
        #post 'fizzbuzz/index'
        #resources :fizzbuzz
    end
  end
end

=end
Rails.application.routes.draw do
  get 'favorites/create'

  get 'fizzbuzz/index'
  root to: 'fizzbuzz#index'
  resources  :favorites, only: [:create, :destroy]
  namespace :api do  
    namespace :v1 do
      resources :fizzbuzzapi, only: :index
      #get 'fizzbuzzapi/index'
      resources  :favoritesapi, only: [:create, :destroy]

    end
  end  

end
