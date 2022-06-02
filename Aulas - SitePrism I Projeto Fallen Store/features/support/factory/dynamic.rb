require 'faker'

module Factory
    class Dynamic
    
        Faker::Config.locale = 'pt-BR'
        
        def self.newsletter_data_info
            {
                name: Faker::Name.name,
                email: Faker::Internet.email
            }
        end

        def self.locale_data_info
            {
                cep: Faker::Address.postcode
            }
        end

    end
end