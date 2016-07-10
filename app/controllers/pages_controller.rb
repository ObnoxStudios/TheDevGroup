class PagesController < ApplicationController
  def index
  end

  def home
    @newPost = Post.new
    @posts = Post.all
  end

  def profile
    # grab the username from the URL as :id
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else 
      # redirect to 404 (root for now)
      redirect_to root_path, :notice=> "User not found!" 
    end
    
    @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
    @newPost = Post.new
  end

  def explore
    @posts = Post.all
    @newPost = Post.new
  end
  def User
    @users = User.all
  end
end
