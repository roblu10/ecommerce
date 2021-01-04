Given("I am on the Alimentos sector page") do
    sectoralimentospage.load
    
    expect(sectorpage.title_sector.text).to eq 'Alimentos'
    expect(sectorpage.sidebar.title_filter_sector.text).to eq 'Alimentos'
end
  
When("I hover over the Alimentos sector") do
    sectorpage.topbar.hover_sector(sectorpage.topbar.sector_alimentos)
end
  
And("I click on the {string} category on the Alimentos topbar") do |topbar_category|
    if (topbar_category != "Açúcar") && (topbar_category != "Leite")
        sectorpage.topbar.click_topbar_category(topbar_category)
    elsif topbar_category == "Açúcar"
        sectorpage.topbar.click_category_acucar
    elsif topbar_category == "Leite"
        sectorpage.topbar.click_category_leite
    end
end
  
And("I confirm that I am on the {string} Alimentos sector category page") do |page_category|
    expect(sectorpage.title_category.text).to eq "#{page_category}"
end
  
And("I add a product of the Alimentos sector category") do
    step %{I add a product}
end
  
Then("I confirm that the Alimentos category product is in my bag") do
    expect(homepage.header.bag.text).to eq '1'
end

When("I click on the {string} category on the Alimentos sidebar") do |sidebar_category|
    if sidebar_category != "Açúcar"
        sectorpage.sidebar.click_sidebar_category(sidebar_category)
    else
        sectorpage.sidebar.click_category_acucar
    end
end