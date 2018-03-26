class V1::CategoriesController < ApplicationController
	def index
		categories = Category.all
		render json: JSON.pretty_generate(categories.as_json)
	end

	def show
		category = Category.find_by(id: params[:id])
		render json: JSON.pretty_generate(category.as_json)
	end
end
