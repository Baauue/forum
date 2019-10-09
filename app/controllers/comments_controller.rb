class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:id])
		@comment = @post.comment.create(params[:comment].permit(:comment))

		if @comment.save
			redirect_to post_path(@post)
		else
			render 'new'
		end
	end

end