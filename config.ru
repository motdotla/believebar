require 'app'

use Rack::ShowExceptions

run App.new

# require 'rubygems'
# require 'sinatra'
# 
# Sinatra::Application.default_options.merge!(
#   :run => false,
#   :env => :production
# )
# 
# require 'app.rb'
# run Sinatra.application