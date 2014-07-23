require 'minitest/autorun'
require 'webmock/test_unit'

# Add in some pry debuggin niceties
require 'pry'
require 'pry-nav'

#Make a simple document for test cases.
require_relative '../lib/arkenstone.rb'
Dir['./test/dummy/app/models/**/*.rb'].each { |f| require f }

def build_user(id)
  User.build user_options.merge({id: id})
end

def create_user(options, id)
  stub_request(:post, User.arkenstone_url).to_return(body: options.merge({id: id}).to_json)
  User.build(options).save
end

def user_options(options={})
  {
    name: 'John Doe',
    age: 18,
    gender: 'Male',
    bearded: true,
    awesome: true
  }.merge!(options)
end
