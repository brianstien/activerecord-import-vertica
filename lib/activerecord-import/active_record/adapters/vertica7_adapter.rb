require "active_record/connection_adapters/vertica_adapter"
require "activerecord-import/adapters/vertica7_adapter"

class ActiveRecord::ConnectionAdapters::Vertica7Adapter
  include ActiveRecord::Import::Vertica7Adapter
end