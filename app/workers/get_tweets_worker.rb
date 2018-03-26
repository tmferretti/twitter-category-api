# require 'sidekiq-scheduler'
# require 'twitter'
# require 'figaro'

# class GetTweetsWorker
#   include Sidekiq::Worker

#   def perform
#     client = Twitter::REST::Client.new do |config|
# 	  config.consumer_key        = Figaro.env.consumer_key
# 	  config.consumer_secret     = Figaro.env.consumer_secret
# 	  config.access_token        = Figaro.env.access_token
# 	  config.access_token_secret = Figaro.env.access_token_secret
# 	end

# 	Category.each do |category|
# 		client.search("#{category.name} -rt", lang: "en").first(10).each do |tweet|
# 			tweet1 = Tweet.new(
# 				user_name: tweet.user.name,
# 				screen_name: tweet.user.screen_name,
# 				text: tweet.text,
# 				posted_at: tweet.created_at,
# 				category_id: category.id
# 			)
# 			if tweet1.save == false
# 				p tweet1.errors 
# 			end
# 		end
# 	end
#   end
# end
