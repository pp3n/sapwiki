class ArticlesController < ApplicationController
	def index
	end
	def new
		@article = Article.new
	end
	def show
	end
	def create
		@article = Article.new(article_params)
		if @aricle.save
			redirect_to @article
		else
			render 'new'
		end
	end

	private 

	def article_params
		params.require(:article).permit(:title, :content, :prepared_by)
	end
end