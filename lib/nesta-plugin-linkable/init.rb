module Nesta
  module Plugin
    module Linkable
      module Helpers
      end
    end
  end

  class App
    helpers Nesta::Plugin::Linkable::Helpers

    def url_for(page)
      page.is_linked? ? page.metadata('url') : File.join(base_url, page.path)
    end

  end

  class Page

    def is_linked?
      not self.metadata('url').nil?
    end

  end
end
