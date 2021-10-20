ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
require 'sinatra'
require 'pry'
require "shotgun"
Bundler.require(:default, ENV["RACK_ENV"])



require_all 'app'