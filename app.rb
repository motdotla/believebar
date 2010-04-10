#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra/base'
require 'haml'

class App < Sinatra::Base
  get '/' do
    haml :index
  end

  # SASS stylesheet
  get '/stylesheets/style.css' do
    header 'Content-Type' => 'text/css; charset=utf-8'
    sass :style
  end
end