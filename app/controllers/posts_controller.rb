class PostsController < ApplicationController



  def index

      @user = User.find(params[:user_id])
      @posts = @user.posts.all

  end

  def new

      @post = Post.new

  end

  def show

      @user = User.find(params[:user_id])
      @post = @user.posts.find(params[:id])

  end

  def create

      @user = User.find(params[:user_id])
      @post = @user.posts.new(post_params)

    if @post.save
      redirect_to user_posts_path
    else
      render :new
    end


  end

  def edit

      @user = User.find(params[:user_id])
      @post = @user.posts.find(params[:id])

  end

  def update

      @user = User.find(params[:user_id])
      @post = @user.posts.find(params[:id])

    if @post.update(post_params)
      redirect_to user_posts_path
    else
      render :edit
    end


  end

  def destroy
      @user = User.find(params[:user_id])
      @post = @user.posts.find(params[:id])
      @post.destroy!
      redirect_to user_posts_path

  end


  private

  def post_params

    params.require(:post).permit(:title, :body, :user_id)


  end











end
