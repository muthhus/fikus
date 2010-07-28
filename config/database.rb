if ENV['MONGOHQ_URL']
  MongoMapper.connection = Mongo::Connection.from_uri(ENV['MONGOHQ_URL'], :logger => logger)
else
  MongoMapper.connection = Mongo::Connection.new('localhost', nil, :logger => logger)
  MongoMapper.database = "fikus_#{Padrino.env}"
end