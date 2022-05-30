module Pages
    class SearchResults < SitePrism::Page
        
        set_url('/busca')

        element :products, 'div[class="row"] div[class="col-md-3 col-sm-4 col-xs-6 text-center"]'

    end
end