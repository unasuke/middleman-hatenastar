module Middleman
  module Hatenastar
    class Generator
      def initialize(option)
        @uri = option[:uri]
        @title = option[:title]
        @container = option[:container]
        @entry_node = option[:entry_node]
      end

      def generate(uri: nil, title: nil, container: nil, entry_node: nil)
        _uri = uri || @uri
        _title = title || @title
        _container = container || @container
        _entry_node = entry_node || @entry_node

        <<~TAG
          <script type="text/javascript" src="//s.hatena.ne.jp/js/HatenaStar.js"></script>
          <script type="text/javascript">
          Hatena.Star.SiteConfig = {
            entryNodes: {
              "#{_entry_node}": {
                uri: "#{_uri}",
                title: "#{_title}",
                container: "#{_container}"
              }
            }
          };
          </script>
        TAG
      end
    end
  end
end
