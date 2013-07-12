class CommentsController < ApplicationController
	def create
		debugger

  @comment = Comment.new(author_name: params[:comment][:author_name],
                            body: params[:comment][:body],
                            article_id: params[:article_id])  
  @comment.article_id = params[:article_id]

  @comment.save

  redirect_to article_path(@comment.article)
end
end
