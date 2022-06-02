module Pages
    class CartPage < SitePrism::Page
    
        set_url('/compra/carrinho')

        element :btn_buy_product, 'div[class="finalization text-right d-none d-lg-block"]'

    end
end