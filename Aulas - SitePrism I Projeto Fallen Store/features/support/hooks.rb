Before do
    puts "Estou sendo executado antes de cada cenário!"
end

After do |scenario|
    
    # puts "Estou sendo executado depois de cada cenário!"
    # puts scenario.failed? # Retorna True or False

    if scenario.failed?
    
        screenshot = Capybara.page.save_screenshot("reports/screenshots/sc.png")
        attach(screenshot, 'image/png')

    end

end