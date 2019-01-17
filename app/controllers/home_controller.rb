class HomeController < ApplicationController
  def index
  	@art = Article.all
	  @cout = Cout.all
  end
end
