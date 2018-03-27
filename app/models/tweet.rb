class Tweet < ApplicationRecord
	belongs_to :category

	def as_json
		{
			name: user_name,
			screenName: "@#{screen_name}",
			# category: category.name, # feels unnecessary
			datePosted: posted_at,
			text: text
		}
		
	end
end
