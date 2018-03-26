class V1::CategoriesController < ApplicationController
	def index
		@categories = Category.all
		render json: JSON.pretty_generate(@categories.as_json)
	end

	def show
		
	end
end
