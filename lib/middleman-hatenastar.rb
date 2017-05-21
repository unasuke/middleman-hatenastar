require "middleman-core"

Middleman::Extensions.register :hatenastar do
  require "middleman-hatenastar/extension"
  ::Middleman::Hatenastar::Extension
end
