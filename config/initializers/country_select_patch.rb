# config/initializers/country_select_patch.rb
module ActionView::Helpers::Tags
  class CountrySelect < Base
    include ActionView::Helpers::FormOptionsHelper
  end
end
