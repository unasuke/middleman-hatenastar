require 'middleman-core'
require 'middleman-hatenastar/generator'

module Middleman
  module Hatenastar
    class Extension < ::Middleman::Extension
      option :token,      nil,    'Your hatenastar token.'
      option :uri,        'h3 a', 'Permarink of the entry.'
      option :title,      'h3',   'Entry title.'
      option :container,  'h3',   'Set hatenastar to after of the this tag.'
      option :entry_node, 'div.section', 'Unit of each entry,'

      def initialize(app, options_hash={}, &block)
        super

        if options[:token] == nil
          raise ArgumentError, 'Hatenastar token is required.'
        end

        @generator = ::Middleman::Hatenastar::Generator.new(options)
      end

      expose_to_template :hatenastar_tag, :hatenastar_token_tag

      def hatenastar_tag(uri: nil, title: nil, container: nil, entry_node: nil)
        @generator.generate(uri: uri, title: title, container: container, entry_node: entry_node)
      end

      def hatenastar_token_tag
        @generator.token
      end
    end
  end
end
