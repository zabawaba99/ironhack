class ExampleController < ApplicationController

  def get
    response.headers['X-Paid'] = '$100'
    response.headers['X-Payment-method'] = 'online'
    render json: {request_received: true}, status: 202
  end

  def post
    render json: {error: "I didn't like your request"}, status: 400
  end

  def redirect
    redirect_to action: 'get'
  end
end
