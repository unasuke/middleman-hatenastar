module Middleman
  module Hatenastar
    class Generator
      def initialize(option)
        @uri = option[:uri]
        @title = option[:title]
        @container = option[:container]
      end

      def generate(uri: nil, title: nil, container: nil)
        _uri = uri || @uri
        _title = title || @title
        _container = container || @container

        <<~TAG
          <script type="text/javascript" src="//s.hatena.ne.jp/js/HatenaStar.js"></script>
          <script type="text/javascript">
          Hatena.Star.SiteConfig = {
            entryNodes: {
              'section': {
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
