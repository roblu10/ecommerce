Given("I am on the Infantil sector page") do
    sectorinfantilpage.load
    
    expect(sectorpage.title_sector.text).to eq 'Infantil'
    expect(sectorpage.sidebar.title_filter_sector.text).to eq 'Infantil'
end
  
When("I hover over the Infantil sector") do
    sectorpage.topbar.hover_sector(sectorpage.topbar.sector_infantil)
end
  
And("I click on the {string} category on the Infantil topbar") do |topbar_category|
    sectorpage.topbar.click_topbar_category(topbar_category)
end
  
And("I confirm that I am on the {string} Infantil sector category page") do |page_category|
    expect(sectorpage.title_category.text).to eq "#{page_category}"
end
  
And("I add a product of the Infantil sector category") do
    step %{I add a product}
end
  
Then("I confirm that the Infantil category product is in my bag") do
    expect(homepage.header.bag.text).to eq '1'
end
  
When("I click on the {string} category on the Infantil sidebar") do |sidebar_category|
    sectorpage.sidebar.click_sidebar_category(sidebar_category)
end