require "activerecord-import/adapters/vertica6_adapter"

class ActiveRecord::ConnectionAdapters::VerticaAdapter
  include ActiveRecord::Import::Vertica6Adapter
end
