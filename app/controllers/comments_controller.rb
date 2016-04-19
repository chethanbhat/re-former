class CommentsController < ApplicationController

    def index
      @user = User.find(params[:user_id])
      @post = @user.posts.find(params[:post_id])
      @comments = @post.comments.all
    end

    def new
      @user = User.find(params[:user_id])
      @post = @user.posts.find(params[:post_id])
      @comment = @post.comments.new
    end

    def create
      @user = User.find(params[:user_id])
      @post = @user.posts.find(params[:post_id])
      @comment = @post.comments.new(params[:message])
    end

    def show
      @user = User.find(params[:user_id])
      @post = @user.posts.find(params[:post_id])
      @comment = @post.comments.find(params[:comment_id])
    end

    def edit
    end

    def update
    end

    def destroy
    end






end
