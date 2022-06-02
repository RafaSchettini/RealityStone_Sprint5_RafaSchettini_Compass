Quando('o usuário informar seus dados no formulário') do
    newsletter_data = Factory::Dynamic.newsletter_data_info
    @home_page.send_newsletter_data(newsletter_data)
end
  
Então('deverá apresentar teste captcha') do
    expect(@home_page).to have_captcha_form
end