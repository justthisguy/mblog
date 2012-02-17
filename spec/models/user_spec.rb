require 'spec_helper'

describe User do

	before(:each) do
		@attr = { :name => 'Given Family', :email => 'given@family.com'}
	end

	it 'should create a new instance given valid attributes' do
		User.create!(@attr)
	end

	it 'should require a name' do
		user = User.new :name => '', :email => 'given@family.com'
		user.should_not be_valid
	end

	it 'should require an email' do
		user = User.new :name => 'Given Family', :email => ''
		user.should_not be_valid
	end

	it 'should have a name that is no longer than 50 characters' do
		too_long_name = 'a'*51
		user = User.new :name => too_long_name, :email => 'given@family.com'
		user.should_not be_valid
	end

	it 'should have a name that is no shorter than 3 characters' do
		too_short_name = 'a'*2
		user = User.new :name => too_short_name, :email => 'given@family.com'
		user.should_not be_valid
	end

	it "should accept valid email addresses" do
		addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
		addresses.each do |address|
			valid_email_user = User.new(@attr.merge(:email => address))
			valid_email_user.should be_valid
		end
	end

	it "should reject invalid email addresses" do
		addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
		addresses.each do |address|
			invalid_email_user = User.new(@attr.merge(:email => address))
			# p invalid_email_user
			invalid_email_user.should_not be_valid
		end
	end
	
	it 'should reject non-unique email' do
		User.create!(@attr)
		second = User.create(@attr)
		second.should_not be_valid
	end

	it 'should reject non-unique email no mater the case' do
		@attr[:email] =  @attr[:email].upcase
		first = User.create!(@attr)
		first.should be_valid

		@attr[:email] =  @attr[:email].downcase
		second = User.create(@attr)
		second.should_not be_valid
	end




end
