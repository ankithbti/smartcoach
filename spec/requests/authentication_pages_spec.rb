require 'spec_helper'

describe "AuthenticationPages" do
  
	subject { page }
	describe "signin page" do
		# let(:user) { FactoryGirl.create(:user) }
		# #before { visit user_path(user) }
		before { visit signin_path }
		it { should have_selector('title', text: 'Sign in') }
	end


end
