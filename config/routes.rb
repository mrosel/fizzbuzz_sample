=begin
FizzbuzzSample::Application.routes.draw do
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
  get 'fizzbuzz/index'
  root to: 'fizzbuzz#index'
 
  namespace :api do  
    namespace :v1 do
      resources :fizzbuzzapi
      #get 'fizzbuzzapi/index'

    end
  end  

end
