require 'sinatra'
require 'sinatra/jsonp'
require 'rubygems'
require 'twitter'

class TwitterFetcher < Sinatra::Base
  helpers Sinatra::Jsonp

  @@twitter_client = Twitter::Client.new(
    :consumer_key       => 'YOUR-CONSUMER-KEY-JUNX',
    :consumer_secret    => 'YOUR-CONSUMER-SECRET-JUNX',
    :oauth_token        => 'YOUR-OAUTH-TOKEN-JUNX',
    :oauth_token_secret => 'YOUR-OAUTH-TOKEN-SECRET-JUNX',
  )

  get '/' do
    jsonp @@twitter_client.home_timeline.map(&:attrs)
  end

end
