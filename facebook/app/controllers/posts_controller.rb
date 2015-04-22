class PostsController < ApplicationController


  def create
    user = User.find_by_id(params[:user_id])
    if user
      post = Post.new(post_params)
      post.date = DateTime.now
      user.posts.push post
      unless user.save
        render json: {error:"could not create post"}, status: 400
        return
      end

      render json: post
    else
      render json: {error:"invalid user"}, status: 404
    end
  end

  private
    def post_params
      params.require(:post).permit(:content, :location, :mood)
    end
  end
