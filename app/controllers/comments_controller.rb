class CommentsController < ApplicationController

  def new
   @post = Post.find(params[:post_id])
   @comment = @post.comments.new
  end

  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to :post_comments
    else
      render :new
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :body)
  end

 end
