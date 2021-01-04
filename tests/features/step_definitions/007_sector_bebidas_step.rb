Given("I am on the Bebidas sector page") do
    sectorbebidaspage.load
    
    expect(sectorpage.title_sector.text).to eq 'Bebidas'
    expect(sectorpage.sidebar.title_filter_sector.text).to eq 'Bebidas'
end
  
When("I hover over the Bebidas sector") do
    sectorpage.topbar.hover_sector(sectorpage.topbar.sector_bebidas)
end
  
And("I click on the {string} category on the Bebidas topbar") do |topbar_category|
    sectorpage.topbar.click_topbar_category(topbar_category)
end
  
And("I confirm that I am on the {string} Bebidas sector category page") do |page_category|
    expect(sectorpage.title_category.text).to eq "#{page_category}"
end
  
And("I add a product of the Bebidas sector category") do
    step %{I add a product}
end
  
And("I confirm that the Bebidas category product is in my bag") do
    expect(homepage.header.bag.text).to eq '1'
end
  
When("I click on the {string} category on the Bebidas sidebar") do |sidebar_category|
    sectorpage.sidebar.click_sidebar_category(sidebar_category)
end