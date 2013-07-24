require 'logger'
require 'sinatra'

configure do
  LOG = Logger.new(STDOUT)
  LOG.level = Logger.const_get ENV['LOG_LEVEL'] || 'DEBUG'
end

get '/' do
  LOG.info "Get request of /"

  "Hello World!"
end
