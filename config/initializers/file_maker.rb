server = Filemaker::Server.new do |config|
  config.host         = ENV['FILEMAKER_HOST']
  config.account_name = ENV['FILEMAKER_ACCOUNT_NAME']
  config.password     = ENV['FILEMAKER_PASSWORD']
  config.ssl          = { verify: false }
  config.log          = :curl
end

server.databases.all                      # Using -dbnames
server.database['candidates'].layouts.all # Using -layoutnames and -db=candidates
server.database['candidates'].scripts.all # Using -scriptnames and -db=candidates

api = server.db['candidates'].lay['profile']
api = server.db['candidates']['profile']
api = server.database['candidates'].layout['profile']
