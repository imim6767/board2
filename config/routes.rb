Rails.application.routes.draw do
  get 'users/signup'

  get 'users/login'
  get 'users/logining'

  get 'users/logout'

  get 'users/getout'
  
  get 'users/register'

  get '/' => 'posts#index'
  
  get '/posts/new' => 'posts#new'
  
  get '/posts/create' => 'posts#create'
  
  get '/posts/show/:id' => 'posts#show'
  
  get '/posts/edit/:id' => 'posts#edit'
  
  get '/posts/update/:id' => 'posts#update'
  
  get '/posts/destroy/:id' => 'posts#destroy'

end
