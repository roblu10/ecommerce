Given("I am on the Casa e Limpeza sector page") do
    sectorcasaelimpezapage.load
    
    expect(sectorpage.title_sector.text).to eq 'Casa e Limpeza'
    expect(sectorpage.sidebar.title_filter_sector.text).to eq 'Casa e Limpeza'
end
  
When("I hover over the Casa e Limpeza sector") do
    sectorpage.topbar.hover_sector(sectorpage.topbar.sector_casa_e_limpeza)
end
  
And("I click on the {string} category on the Casa e Limpeza topbar") do |topbar_category|
    sectorpage.topbar.click_topbar_category(topbar_category)
end
  
And("I confirm that I am on the {string} Casa e Limpeza sector category page") do |page_category|
    expect(sectorpage.title_category.text).to eq "#{page_category}"
end
  
And("I add a product of the Casa e Limpeza sector category") do
    step %{I add a product}
end
  
Then("I confirm that the Casa e Limpeza category product is in my bag") do
    expect(homepage.header.bag.text).to eq '1'
end
  
When("I click on the {string} category on the Casa e Limpeza sidebar") do |sidebar_category|
    sectorpage.sidebar.click_sidebar_category(sidebar_category)
end