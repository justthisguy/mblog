class UsersController < ApplicationController
	
  def new
		@page_title = 'Sign Up'
  end

  def show
		@user = User.find(params[:id])
  end

end
