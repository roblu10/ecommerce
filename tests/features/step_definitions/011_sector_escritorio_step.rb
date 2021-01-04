Given("I am on the Escritorio sector page") do
    sectorescritoriopage.load
    
    expect(sectorpage.title_sector.text).to eq 'Escritório'
    expect(sectorpage.sidebar.title_filter_sector.text).to eq 'Escritório'
end
  
When("I hover over the Escritorio sector") do
    sectorpage.topbar.hover_sector(sectorpage.topbar.sector_escritorio)
end
  
And("I click on the {string} category on the Escritorio topbar") do |topbar_category|
    sectorpage.topbar.click_topbar_category(topbar_category)
end
  
And("I confirm that I am on the {string} Escritorio sector category page") do |page_category|
    expect(sectorpage.title_category.text).to eq "#{page_category}"
end
  
And("I add a product of the Escritorio sector category") do
    step %{I add a product}
end
  
Then("I confirm that the Escritorio category product is in my bag") do
    expect(homepage.header.bag.text).to eq '1'
end
  
When("I click on the {string} category on the Escritorio sidebar") do |sidebar_category|
    sectorpage.sidebar.click_sidebar_category(sidebar_category)
end