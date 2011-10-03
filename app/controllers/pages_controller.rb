class PagesController < ApplicationController
	
	def init
		@main_title = 'Ruby on Rails Tutorial Sample App'
		@page_title = ''
	end
	
  def home
		@page_title = 'Home'
  end

  def contact
		@page_title = 'Contact'
  end

	def about
		@page_title = 'About'
	end

end
