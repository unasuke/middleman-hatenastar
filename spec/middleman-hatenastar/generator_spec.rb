require 'middleman-hatenastar/generator'

RSpec.describe 'Middleman::Hatenastar::Generator' do
  describe '#generate' do
    let(:option) do
      {
        token:      'token-string',
        uri:        'h2.uri',
        title:      'h2.title',
        container:  'h2.container',
        entry_node: 'section.node'
      }
    end
    let(:generator) { ::Middleman::Hatenastar::Generator.new(option) }

    context 'non-overwrite configure' do
      it 'should generate hatenastar tag' do
        expect(generator.generate).to eq <<~TAG
          <script type="text/javascript" src="//s.hatena.ne.jp/js/HatenaStar.js"></script>
          <script type="text/javascript">
            Hatena.Star.Token = 'token-string';
            Hatena.Star.SiteConfig = {
              entryNodes: {
                "section.node": {
                  uri: "h2.uri",
                  title: "h2.title",
                  container: "h2.container"
                }
              }
            };
          </script>
        TAG
      end
    end

    context 'overwrite configure' do
      let(:another_option) do
        {
          uri:        'h2.uri-another',
          title:      'h2.title-another',
          container:  'h2.container-another',
          entry_node: 'section.node-another'
        }
      end

      it 'should generate overwrited hatenastar tag' do
        expect(generator.generate(**another_option)).to eq <<~TAG
          <script type="text/javascript" src="//s.hatena.ne.jp/js/HatenaStar.js"></script>
          <script type="text/javascript">
            Hatena.Star.Token = 'token-string';
            Hatena.Star.SiteConfig = {
              entryNodes: {
                "section.node-another": {
                  uri: "h2.uri-another",
                  title: "h2.title-another",
                  container: "h2.container-another"
                }
              }
            };
          </script>
        TAG
      end
    end
  end
end
