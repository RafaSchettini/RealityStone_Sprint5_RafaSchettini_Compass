module Sections
    class Products < SitePrism::Section

        element :name, 'h3'
        element :price, '.new-price'
        element :image, 'div[class="image image-box"]'

    end
end