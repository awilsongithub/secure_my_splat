require 'bundler' # require the Bundler
Bundler.require # use a method

# connection must est. before models can be loaded
ActiveRecord::Base.establish_connection(
   :database => 'bee_crypt_bzz',
   :adapter => 'postgresql'
)

# baseic template routes
get '/' do
   # return some resource
   return {:hello => 'world'}.to_json
end
