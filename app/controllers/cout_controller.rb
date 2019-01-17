class CoutController < ApplicationController
	def index
		@cout = Cout.all
	end
end
