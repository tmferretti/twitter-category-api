namespace :twitter_scrape do
	desc "TODO"
	task get_daily_tweets: :environment do
		client = Twitter::REST::Client.new do |config|
	  config.consumer_key        = Figaro.env.consumer_key
	  config.consumer_secret     = Figaro.env.consumer_secret
	  config.access_token        = Figaro.env.access_token
	  config.access_token_secret = Figaro.env.access_token_secret
	end

		Category.all.each do |category|
		client.search("#{category.name} -rt", lang: "en").first(10).each do |tweet|
			tweet1 = Tweet.create(
				user_name: tweet.user.name,
				screen_name: tweet.user.screen_name,
				text: tweet.full_text,
				posted_at: tweet.created_at,
				category_id: category.id
			)
		end
	end
	p 'got daily tweets'
	end
end
