PROJECT_ROOT_PATH = File.dirname(File.dirname(File.dirname(__FILE__)))

# middleman-core 4.3.x uses File.exists? which was removed in Ruby 3.2
unless File.respond_to?(:exists?)
  class File
    def self.exists?(path)
      exist?(path)
    end
  end
end

require 'middleman-core'
require 'middleman-core/step_definitions'
require File.join(PROJECT_ROOT_PATH, 'lib', 'middleman-hatenastar')
