require "activerecord-import/adapters/vertica6_adapter"

class ActiveRecord::ConnectionAdapters::Vertica6Adapter
  include ActiveRecord::Import::Vertica6Adapter
end
