module Sections
    class Header < SitePrism::Section
        element :btn_open_search, 'li[class="search"] button[class="btn btn-primary dropdown-toggle"]'
        element :btn_search, 'div[class="dropdown-menu"] button'

        element :search_input, 'div[class="dropdown-menu"] input'

        def input_and_search(product)
            btn_open_search.click
      
            search_input.set product
      
            btn_search.click
        end

    end
end