require 'spec_helper'

describe "Courses" do
  # describe "GET /courses" do
  #   it "works! (now write some real specs)" do
  #     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
  #     get courses_path
  #     response.status.should be(200)
  #   end
  # end

  	before do
		@user = User.new(name: "Example User", email: "user@example.com", password: "password1")
	end
	subject { @user }
	# let(:user) { FactoryGirl.create(:user) }
	it { should respond_to(:name) }
	it { should respond_to(:email) }
	it { should be_valid }
	describe "when name is not present" do
		before { @user.name = " " }
		it { should_not be_valid }
	end
end
