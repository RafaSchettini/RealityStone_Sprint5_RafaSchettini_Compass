module Pages
    class ProductPage < SitePrism::Page
        set_url('/')

        element :main_image, 'div[class="zoom"] img'
        
        element :btn_open_sizes, 'button[class="btn btn-default dropdown-toggle"]'
        elements :btn_sizes, 'ul[class="size-content size-content-desktop dropdown-menu dropdown-menu-left"] li[class="hidden-xs "]'

        elements :colors, 'ul[class="option-content option-content-desktop list-inline clearfix"] li'
    end
end