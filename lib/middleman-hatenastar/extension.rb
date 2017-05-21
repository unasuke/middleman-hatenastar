require 'middleman-core'
require 'middleman-hatenastar/generator'

module Middleman
  module Hatenastar
    class Extension < ::Middleman::Extension
      option :uri,       'h3 a', 'Permarink of the entry.'
      option :title,     'h3',   'Entry title.'
      option :container, 'h3',   'Set hatenastar to after of the this tag.'

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
