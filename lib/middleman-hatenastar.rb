require "middleman-core"

Middleman::Extensions.register :middleman-hatenastar do
  require "my-extension/extension"
  MyExtension
end
