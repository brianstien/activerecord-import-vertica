require "active_record/connection_adapters/vertica_adapter"
require "activerecord-import/adapters/vertica5_adapter"

class ActiveRecord::ConnectionAdapters::Vertica5Adapter
  include ActiveRecord::Import::Vertica5Adapter
end
