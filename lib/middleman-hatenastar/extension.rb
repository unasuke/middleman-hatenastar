require 'middleman-core'
require 'middleman-hatenastar/generator'

module Middleman
  module Hatenastar
    class Extension < ::Middleman::Extension
      #option :uri, 'h3 img aaaaaa', 'aaaa'
      #option :title, 'h3', 'aaaa'
      #option :container, 'h3', 'aaaa'

      def initialize(app, options_hash={}, &block)
        super

        @generator = ::Middleman::Hatenastar::Generator.new(options)
      end

      expose_to_template :hatenastar

      def hatenastar(uri: nil, title: nil, container: nil)
        @generator.generate(uri: uri, title: title, container: container)
      end
    end
  end
end
