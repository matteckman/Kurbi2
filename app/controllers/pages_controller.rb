class PagesController < ApplicationController
	def home
	  @title = "Home"
	  render 'home'
	end
	
	def about
	  @title = "About"
	  render 'about'
	end
	
	def contact
	  @title = "Contact"
	  render 'contact'
	end
end