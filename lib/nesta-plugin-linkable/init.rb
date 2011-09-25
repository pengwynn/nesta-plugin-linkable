module Nesta
  module Plugin
    module Linkable
      module Helpers
        def url_for(page)
          page.is_linked? ? page.metadata('url') : super
        end
      end
    end
  end

  class App
    helpers Nesta::Plugin::Linkable::Helpers
  end

  class Page

    def is_linked?
      not self.metadata('url').nil?
    end

  end
end
