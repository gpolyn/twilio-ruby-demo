require "rubygems"
require 'twilio-ruby'
require "sinatra/base"

class MyApp < Sinatra::Base

  get '/sms-quickstart' do
    sender = params[:From]
    friends = {}
    friends["+12067785747"] = "Curious George"
    # friends[ENV['MY_FRIENDS_NUMBER']] = "Curious George"
    name = friends[sender] || "Person I don't yet know"
    twiml = Twilio::TwiML::Response.new do |r|
      r.Message "Hello, #{name}. Thanks for the message."
    end
    twiml.text
  end

end
