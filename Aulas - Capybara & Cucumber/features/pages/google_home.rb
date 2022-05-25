require 'capybara/dsl'

class GoogleHome
    include Capybara::DSL

    def load
        visit ('https://www.google.com.br')
    end

    def search_for(query)
        find("input[name='q']").set query
        # find(".gNO89b").click // Procura botão por nome da classe CSS
        click_button "Pesquisa Google"
    end

end