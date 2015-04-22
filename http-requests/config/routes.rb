Rails.application.routes.draw do
  get '/example/get', to: 'example#get'
  get '/example/redirect', to: 'example#redirect'
  post '/example/post', to: 'example#post'
end
