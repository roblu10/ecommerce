Given("I am on the Higiene e Beleza sector page") do
    sectorhigieneebelezapage.load
    
    expect(sectorpage.title_sector.text).to eq 'Higiene e Beleza'
    expect(sectorpage.sidebar.title_filter_sector.text).to eq 'Higiene e Beleza'
end
  
When("I hover over the Higiene e Beleza sector") do
    sectorpage.topbar.hover_sector(sectorpage.topbar.sector_higiene_e_beleza)
end
  
And("I click on the {string} category on the Higiene e Beleza topbar") do |topbar_category|
    sectorpage.topbar.click_topbar_category(topbar_category)
end
  
And("I confirm that I am on the {string} Higiene e Beleza sector category page") do |page_category|
    expect(sectorpage.title_category.text).to eq "#{page_category}"
end
  
And("I add a product of the Higiene e Beleza sector category") do
    step %{I add a product}
end
  
Then("I confirm that the Higiene e Beleza category product is in my bag") do
    expect(homepage.header.bag.text).to eq '1'
end
  
When("I click on the {string} category on the Higiene e Beleza sidebar") do |sidebar_category|
    sectorpage.sidebar.click_sidebar_category(sidebar_category)
end