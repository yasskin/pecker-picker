require('sinatra')
require('sinatra/reloader')
require('./lib/pecker_picker')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/target') do
  @prose_input = params.fetch('prose')
  @pick = params.fech('pick')
  erb(:target)
  @pp_result = @prose_input.pecker_picker(@pick)
end
