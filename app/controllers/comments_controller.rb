class CommentsController < ApplicationController

  def new
   @post = Post.find(params[:post_id])
   @comment = @post.comments.new
  end

  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end

 end
