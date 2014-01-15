require "activerecord-import/adapters/vertica5_adapter"

class ActiveRecord::ConnectionAdapters::VerticaAdapter
  include ActiveRecord::Import::Vertica5Adapter
end

class ActiveRecord::Base
  def self.import(*args)
    if args.flatten.first.is_a?(::ActiveRecord::Base)
      bulk_insert_records(*args)
    else
      bulk_insert(*args)
    end
  end
end
