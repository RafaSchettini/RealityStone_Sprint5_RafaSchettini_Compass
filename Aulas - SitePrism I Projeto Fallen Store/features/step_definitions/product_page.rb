Quando('acessar a página do produto') do
    @search_results_page.access_product_page(0)
    @product_page = Pages::ProductPage.new
end
  
Quando('o usuário alterar a cor do produto') do
    @image_before = @product_page.main_image['src']
    @product_page.colors[0].click
end

Quando('alterar o tamanho do produto') do
    @product_page.btn_open_sizes.click
    @product_page.btn_sizes[2].click
end
  
Então('deverá ser exibido o produto na respectiva opção escolhida') do
    expect(@product_page.main_image['src']).not_to eql @image_before
end

Dado('que o usuário esteja localizado ná página de um certo produto') do
    steps %{
        Dado que o usuário esteja na página inicial
        Quando realizar a busca por um produto
        E acessar a página do produto
    }
end