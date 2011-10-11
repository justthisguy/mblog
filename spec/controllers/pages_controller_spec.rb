require 'spec_helper'

describe PagesController do
	render_views
	
	before (:each) do
		@main_title = 'Ruby on Rails Tutorial Sample App'
	end
	
	# Home page
  describe 'GET home' do
    it "should be successful" do
      get 'home'
#			logger.debug "***********  this is the response #{response}"
      response.should be_success
    end
		
		it 'should have the right title' do
			get 'home'
			response.should have_selector("title", :content => @main_title + " | Home")
		end
  end

	# Contact page
  describe 'GET contact' do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
		
		it 'should have the right title' do
			get 'contact'
			response.should have_selector("title", :content => @main_title + " | Contact")
		end
  end

	# About page
	describe 'GET about' do
    it "should be successful" do
      get 'about'
      response.should be_success
		end
		
		it 'should have the right title' do
			get 'about'
			response.should have_selector("title", :content => @main_title + " | About")
		end
	end

	# Help page
	describe 'GET help' do
    it "should be successful" do
      get 'help'
      response.should be_success
			response.should have_selector("title", :content => @main_title + " | Help")
		end
	end

end
