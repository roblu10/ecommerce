Given("I am on the Pet Shop sector page") do
    sectorpetshoppage.load
    
    expect(sectorpage.title_sector.text).to eq 'Pet Shop'
    expect(sectorpage.sidebar.title_filter_sector.text).to eq 'Pet Shop'
end
  
When("I hover over the Pet Shop sector") do
    sectorpage.topbar.hover_sector(sectorpage.topbar.sector_pet_shop)
end
  
And("I click on the {string} category on the Pet Shop topbar") do |topbar_category|
    sectorpage.topbar.click_topbar_category(topbar_category)
end
  
And("I confirm that I am on the {string} Pet Shop sector category page") do |page_category|
    expect(sectorpage.title_category.text).to eq "#{page_category}"
end
  
And("I add a product of the Pet Shop sector category") do
    step %{I add a product}
end
  
Then("I confirm that the Pet Shop category product is in my bag") do
    expect(homepage.header.bag.text).to eq '1'
end
  
When("I click on the {string} category on the Pet Shop sidebar") do |sidebar_category|
    if (sidebar_category != "Cães") && (sidebar_category != "Gatos")
        sectorpage.sidebar.click_sidebar_category(sidebar_category)
    elsif sidebar_category == "Cães"
        sectorpage.sidebar.click_category_caes
    elsif sidebar_category == "Gatos"
        sectorpage.sidebar.click_category_gatos
    end
end  