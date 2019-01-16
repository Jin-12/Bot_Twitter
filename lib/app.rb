require 'twitter'
require 'dotenv'
require 'pry'
Dotenv.load

def login_twitter
# quelques lignes qui appellent les clés d'API de ton fichier .env
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  end
  return client
end

def first_tweet
  client = login_twitter
  client.update('Mon premier tweet en Ruby !!!!')
end
