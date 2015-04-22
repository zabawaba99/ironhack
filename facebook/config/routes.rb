Rails.application.routes.draw do
  post '/users' => 'users#create'
  post '/users/:user_id/posts' => 'posts#create'
end
