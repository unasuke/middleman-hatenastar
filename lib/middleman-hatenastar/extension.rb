# Require core library
require 'middleman-core'

# Extension namespace
#class ::Middleman::Hatenastar::Extension < ::Middleman::Extension
#  #option :my_option, 'default', 'An example option'
#
#  def initialize(app, options_hash={}, &block)
#    # Call super to build options from the options_hash
#    super
#
#    # Require libraries only when activated
#    # require 'necessary/library'
#
#    # set up your extension
#    # puts options.my_option
#  end
#
#  #def after_configuration
#  #  # Do something
#  #end
#
#  # A Sitemap Manipulator
#  # def manipulate_resource_list(resources)
#  # end
#
#  helpers do
#    def hatenastar
#      puts "aaaaaa"
#    end
#  end
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
