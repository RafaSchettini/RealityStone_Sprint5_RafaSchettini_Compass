module Pages
    class ProductPage < SitePrism::Page
        set_url('/')

        element :main_image, 'div[class="zoom"] img'
        
        element :btn_open_sizes, 'button[class="btn btn-default dropdown-toggle"]'
        elements :btn_sizes, 'ul[class="size-content size-content-desktop dropdown-menu dropdown-menu-left"] li[class="hidden-xs "]'

        elements :colors, 'ul[class="option-content option-content-desktop list-inline clearfix"] li'

        element :btn_buy, 'button[class="btn btn-primary btn-cart"]'

        element :btn_open_cep, 'button[class="btn btn-default btn-shipping dropdown-toggle"]'
        element :input_cep, 'input[class="cep-mask form-control"]'
        element :btn_calc_cep, 'button[class="btn btn-default btn-calc"]'

        element :delivery_info, 'ul[class="product-delivery-list"]'

    end
end