module Pages
    class ProductPage < SitePrism::Page
        set_url('/')

        element :main_image, 'div[class="zoom"] img'
        elements :colors, 'ul[class="option-content option-content-desktop list-inline clearfix"] li'
    end
end