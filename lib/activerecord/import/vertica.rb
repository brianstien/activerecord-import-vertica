require "activerecord/import/vertica/version"

require "activerecord-import"

module Activerecord
  module Import
    module Vertica
    end
  end
end

# AR import loads itself inside of an activesupport load hook,
# so we have to force load the code now so that we can patch the
# import method.
module ActiveRecord
  module Import
  end
end
require "activerecord-import/import"

class ActiveRecord::Base
  def self.import(*args)
    if args.flatten.first.is_a?(::ActiveRecord::Base)
      bulk_insert_records(*args)
    else
      bulk_insert(*args)
    end
  end
end
