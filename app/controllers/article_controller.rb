class ArticleController < ApplicationController
	def index
		@art = Article.all
	end
end
