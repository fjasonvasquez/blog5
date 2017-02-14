require 'rails_helper'

RSpec.feature "Users signin" do 
	before do
		@john = User.create!(email: "john@example.com", password: "password")
	end

	
end