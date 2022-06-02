require_relative '../sections/header'
require_relative '../sections/products'

module Pages
    class SearchResults < SitePrism::Page
        
        set_url('/busca')

        section :header, Sections::Header, 'header'
        # element :products, 'div[class="row"] div[class="col-md-3 col-sm-4 col-xs-6 text-center"]'
        sections :products, Sections::Products, 'div[class="row"] div[class="col-md-3 col-sm-4 col-xs-6 text-center"]'

    end
end