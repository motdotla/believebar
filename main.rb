#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  haml :index
end

# SASS stylesheet
get '/stylesheets/style.css' do
  header 'Content-Type' => 'text/css; charset=utf-8'
  sass :style
end