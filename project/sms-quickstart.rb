require 'rubygems'
require 'twilio-ruby'
require 'sinatra'

get '/sms-quickstart' do
  Twilio::TwiML::Response.new do |r|
    r.Say "Hello Monkey! You will get an SMS message soon."
    r.Sms "Here it is!"
  end.text
end
