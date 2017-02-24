require 'rails_helper'

RSpec.describe "Comments", type: :request do
	
	before do
		@john = User.create(email: "john@example.com", password: "password")
		@fred = User.create(email: "fred@example.com", password: "password")
		@article = Article.create!(title: "Title One", body: "Body of article one", user: @john)
	end

	describe 'POST /articles/:id/comments' do 
		context 'with a non signed-in user' do 
			post "/articles/#{@article.id}/comments", params: { comment: {body: "Awesome blog"}}
		end
	end

end