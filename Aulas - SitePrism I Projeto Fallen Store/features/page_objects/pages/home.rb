require_relative '../sections/header'

module Pages
  class Home < SitePrism::Page
        
    set_url('/')

    section :header, Sections::Header, 'header'
    
    element :input_name_newsletter, 'div[class="col-md-6 col-md-offset-5"] input[type="text"]'
    element :input_email_newsletter, 'div[class="col-md-6 col-md-offset-5"] input[type="email"]'
    element :btn_send_newsletter, 'div[class="col-md-6 col-md-offset-5"] button'

    element :captcha_form, 'div[class="octa-widget-v2 octachatAppClose octadesk-octachat-app--bottomRight octadesk-octachat-app"]'
    
    def search_for(product)
      
      header.input_and_search(product)

    end
        
    def send_newsletter_data(info_data)
      input_name_newsletter.set info_data[:name]
      input_email_newsletter.set info_data[:email]
      btn_send_newsletter.click
    end

  end

end