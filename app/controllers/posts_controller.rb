class PostsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]

	def index
  	@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new post_params

		if @post.save
				redirect_to @post, notice: "Post Saved"
		else
			render 'new', notice: "error saving post"
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update post_params
			redirect_to posts_path, notice: "Post update"
		else

			render 'edit', notice: "post was not updated"
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path
	end

	def show
		@post = Post.find(params[:id])
	end


	private


	def post_params
		params.require(:post).permit(:title, :content)

	end




end
