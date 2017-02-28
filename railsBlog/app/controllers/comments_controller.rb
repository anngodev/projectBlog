class CommentsController < ApplicationController
	def create
		post = Post.find(params[:post_id])

		comment = Comment.new(name: params[:comment][:name], body: params[:comment][:body], post_id: params[:post_id], user_id: current_user.id)
		comment.save

		post.comments << comment
		post.save
		
		redirect_to post_path(post.id)
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy

		redirect_to post_path(@post)
	end
end
