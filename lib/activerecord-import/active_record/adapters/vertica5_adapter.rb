require "activerecord-import/adapters/vertica5_adapter"

class ActiveRecord::ConnectionAdapters::VerticaAdapter
  include ActiveRecord::Import::Vertica5Adapter
end
