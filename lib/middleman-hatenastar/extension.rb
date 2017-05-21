require 'middleman-core'

module Middleman
  module Hatenastar
    class Extension < ::Middleman::Extension
      #option :uri, 'h3 img aaaaaa', 'aaaa'
      #option :title, 'h3', 'aaaa'
      #option :container, 'h3', 'aaaa'

      def initialize(app, options_hash={}, &block)
        super
      end

      
      helpers do
        def hatenastar(uri: 'aaa', title: 'aaaaaa', container: 'aaaa')
          <<~SCRIPT
            <script type="text/javascript" src="http://s.hatena.ne.jp/js/HatenaStar.js"></script>
            <script type="text/javascript">
            Hatena.Star.SiteConfig = {
              entryNodes: {
                'section': {
                  uri: "#{uri}",
                  title: "#{title}",
                  container: "#{container}"
                }
              }
            };
            </script>
          SCRIPT
        end
      end
    end
  end
end
