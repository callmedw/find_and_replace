require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace')

get('/') do
  erb(:index)
end

get('/find_and_replace') do
  @output = params.fetch('sentence').find_and_replace(params.fetch('find'), params.fetch('replace'))
  erb(:title)
end
