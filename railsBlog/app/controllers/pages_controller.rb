class PagesController < ApplicationController

	def bloggers
  		@users = User.all
	end

end
