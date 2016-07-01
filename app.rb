require('sinatra')
require('sinatra/reloader')
require('./lib/pecker_picker')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @prose = params.fetch('prose')
  @pick = params.fetch('pick')
  @pp_result = @prose.pecker_picker(@pick)
  erb(:results)
end
