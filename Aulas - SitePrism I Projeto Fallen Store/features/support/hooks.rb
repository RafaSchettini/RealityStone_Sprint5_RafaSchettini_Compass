Before do
    puts "Estou sendo executado antes de cada cenário!"
end

After do |scenario|
    puts "Estou sendo executado depois de cada cenário!"
    puts scenario.failed? # Retorna True or False
end

After('@clear_data') do
    puts "Estou sendo executado depois do cenário: Acessar página inicial do Google | Cenário 2"
end