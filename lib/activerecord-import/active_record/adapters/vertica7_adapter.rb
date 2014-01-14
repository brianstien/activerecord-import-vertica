require "activerecord-import/adapters/vertica7_adapter"

class ActiveRecord::ConnectionAdapters::VerticaAdapter
  include ActiveRecord::Import::Vertica7Adapter
end
