class User < ActiveRecord::Base
	attr_accessible :name, :email
	
	email_regex = /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
  # email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+asdfasdf\z/i	
	
	validates :name,  :presence => true, 
										:length => { :minimum => 3, :maximum => 50 }

	validates :email, :uniqueness => { :case_sensitive => false },
										:presence => true,  
										:format => { :with => email_regex }
										

										#:email => true,  https://github.com/balexand/email_validator
end
