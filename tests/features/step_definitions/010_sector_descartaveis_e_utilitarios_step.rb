Given("I am on the Descartaveis e Utilitarios sector page") do
    sectordescartaveiseutilitariospage.load
    
    expect(sectorpage.title_sector.text).to eq 'Descartáveis e Utilitários'
    expect(sectorpage.sidebar.title_filter_sector.text).to eq 'Descartáveis e Utilitários'
end
  
When("I hover over the Descartaveis e Utilitarios sector") do
    sectorpage.topbar.hover_sector(sectorpage.topbar.sector_descartaveis_e_utilitarios)
end
  
And("I click on the {string} category on the Descartaveis e Utilitarios topbar") do |topbar_category|
    sectorpage.topbar.click_topbar_category(topbar_category)
end
  
And("I confirm that I am on the {string} Descartaveis e Utilitarios sector category page") do |page_category|
    expect(sectorpage.title_category.text).to eq "#{page_category}"
end
  
And("I add a product of the Descartaveis e Utilitarios sector category") do
    step %{I add a product}
end
  
Then("I confirm that the Descartaveis e Utilitarios category product is in my bag") do
    expect(homepage.header.bag.text).to eq '1'
end
  
When("I click on the {string} category on the Descartaveis e Utilitarios sidebar") do |sidebar_category|
    sectorpage.sidebar.click_sidebar_category(sidebar_category)
end