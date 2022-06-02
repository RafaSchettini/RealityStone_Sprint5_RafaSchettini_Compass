require 'faker'

module Factory
    class Dynamic
    
        def self.newsletter_data_info
            {
                name: Faker::Name.name,
                email: Faker::Internet.email
            }
        end

    end
end