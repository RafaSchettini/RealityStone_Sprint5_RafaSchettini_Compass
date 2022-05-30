class FooterNewsletter < SitePrism::Section
    
    element :send_button, 'button[class="btn btn-block btn-primary"]'
  
  end
  
  class ProductsHeadset < SitePrism::Section
  
    element :price, '.new-price'
    element :name, 'h3 a'
  
  end
  
  class Home < SitePrism::Page
      
    set_url('/')
  
    element :btn_open_search, 'div[class="search col-sm-3 col-xs-3 text-center"] .menu-icon'
      
    elements :menu_itens, 'ul[class="menu hidden-sm hidden-xs list-inline"] li div[class="submenu"]'
  
    section :footer_newsletter, FooterNewsletter, 'footer div[class="newsletter"]'
  
    sections :products_headset, ProductsHeadset, 'div[class="row"] div[class="col-md-3 col-sm-4 col-xs-6 text-center"]'
  
  end